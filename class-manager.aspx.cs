using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Data.OleDb;
using P3WebApp.App_Code;
using P3WebApp.ClassLibrary;
using Telerik.Web.UI;

namespace P3WebApp
{
    public partial class class_manager : System.Web.UI.Page
    {
        private struct RegionHotel
        {
            public int HotelId;
            public int RegionId;
            public int WeekSequence;
            public int CountUsed;
        }

        readonly OleDbConnection _conn =
                new OleDbConnection(ConfigurationManager.ConnectionStrings["classDBF"].ConnectionString);

        private List<DateTime> listHolidays;

        private List<RegionHotel> listRegionHotels; 

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                initForm();
            }
            ltrError.Text = string.Empty;
        }

        private void initLists()
        {
            _conn.Open();
            var cmd = new OleDbCommand("SELECT HolidayDate FROM Holidays;", _conn);
            var myReader = cmd.ExecuteReader();
            listHolidays = new List<DateTime>();
            while (myReader.Read())
            {
                listHolidays.Add(DateTime.Parse(myReader["HolidayDate"].ToString()));
            }
            myReader.Close();

            cmd = new OleDbCommand("SELECT RegionHotels.HotelId, RegionHotels.RegionId, RegionHotels.WeekRotation FROM RegionHotels;", _conn);
            myReader = cmd.ExecuteReader();
            listRegionHotels = new List<RegionHotel>();
            while (myReader.Read())
            {
                var rh = new RegionHotel();
                rh.HotelId = (int)myReader["HotelId"];
                rh.RegionId = (int)myReader["RegionId"];
                rh.WeekSequence = (int)myReader["WeekRotation"];
                listRegionHotels.Add(rh);
            }
            myReader.Close();
            _conn.Close();
        }

        private void initForm()
        {
            dpStartDate.SelectedDate = DateTime.Now;
            _conn.Open();

            var cmd = new OleDbCommand(
                "SELECT ClassType.classTypeID, ClassType.classTypeDesc FROM ClassType;", _conn);
            var myReader = cmd.ExecuteReader();
            while (myReader.Read())
            {
                var i = new RadListBoxItem(myReader["classTypeDesc"].ToString(),
                                                      myReader["classTypeID"].ToString());
                lbClasses.Items.Add(i);
            }
            myReader.Close();

            cmd = new OleDbCommand("SELECT DaysOfWeek.DaysOfWeekID, DaysOfWeek.Description FROM DaysOfWeek;", _conn);
            myReader = cmd.ExecuteReader();
            while (myReader.Read())
            {
                lbDays.Items.Add(new RadListBoxItem(myReader["Description"].ToString(),
                                                    myReader["DaysOfWeekID"].ToString()));
            }
            myReader.Close();

            cmd = new OleDbCommand("SELECT Hotels.HotelID, Hotels.ClassLocation FROM Hotels;", _conn);
            myReader = cmd.ExecuteReader();
            while (myReader.Read())
            {
                var i = new RadListBoxItem(myReader["ClassLocation"].ToString(),
                                                      myReader["HotelID"].ToString());
                lbLocations.Items.Add(i);
            }
            myReader.Close();
            _conn.Close();
        }

        protected void btnRun_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text.Trim() == ConfigurationManager.AppSettings["ClassManagerPassword"])
            {
                ltrError.Text = string.Empty;
                runProcess();
            }
            else
            {
                ltrError.Text = "Wrong Password";
                txtPassword.Text = "";
            }
        }

        private void runProcessWithCities()
        {
            var daysIncrement = int.Parse(lbOccurs.SelectedValue);
            var classesAdded = 0;
            var currentDate = dpStartDate.SelectedDate;
            while (currentDate <= dpEndDate.SelectedDate)
            {
                foreach (RadListBoxItem locItem in lbLocations.CheckedItems)
                {
                    foreach (RadListBoxItem classItem in lbClasses.CheckedItems)
                    {
                     addClass(int.Parse(classItem.Value), currentDate, int.Parse(lbDays.SelectedValue), int.Parse(locItem.Value));
                        classesAdded++;
                    }
                }
                currentDate = currentDate.AddDays(daysIncrement);
            }
            lblMessage.Text = classesAdded.ToString() + " classes added";
        }

        private void runProcess()
        {
            if (lbLocations.CheckedItems.Count > 0)
            {
                runProcessWithCities();
                return;
            }

        var daysIncrement = int.Parse(lbOccurs.SelectedValue);
            var classesAdded = 0;
            var currentDate = dpStartDate.SelectedDate;
            var classDaysId = int.Parse(lbDays.SelectedValue);

            if (currentDate.DayOfWeek != DayOfWeek.Saturday)
            {
                lblMessage.Text = "Please select a Saturday only";
                return;
            }
            initLists();
            int curWeekSequence = 1;
            while (currentDate <= dpEndDate.SelectedDate)
            {
                if (!isHolidayWeek(currentDate, classDaysId))
                {
                    int sequence = curWeekSequence;
                    foreach (var HotelRegion in listRegionHotels.Where(h => h.WeekSequence==sequence))
                    {
                        foreach (RadListBoxItem classItem in lbClasses.CheckedItems)
                        {
                            addClass(int.Parse(classItem.Value), currentDate, classDaysId, HotelRegion.HotelId);
                            classesAdded++;
                        }
                    }
                    curWeekSequence = curWeekSequence + 1;
                    if (curWeekSequence >= 5)
                        curWeekSequence = 1;
                }
                currentDate = currentDate.AddDays(daysIncrement);
            }
            lblMessage.Text = classesAdded.ToString() + " classes added";
        }
        private bool isHolidayWeek(DateTime date, int classDaysId)
        {
            bool twoWeekClass = false;
            if (classDaysId == 2)
                twoWeekClass = true;

            var isWeekendClass = classDaysId == 2 || classDaysId == 3;

            do
            {
                if (isWeekendClass && (date.DayOfWeek != DayOfWeek.Sunday && date.DayOfWeek != DayOfWeek.Saturday))
                    break;
                if (listHolidays.Contains(date))
                    return true;
                date = date.AddDays(1);
            } while (date.DayOfWeek != DayOfWeek.Saturday);

            if (twoWeekClass)
            {
                do
                {
                    if (isWeekendClass && (date.DayOfWeek != DayOfWeek.Sunday && date.DayOfWeek != DayOfWeek.Saturday))
                        break;
                    if (listHolidays.Contains(date))
                        return true;
                    date = date.AddDays(1);
                } while (date.DayOfWeek != DayOfWeek.Saturday);
            }

            return false;
        }

        private void addClass(int classTypeId, DateTime classDate, int classDaysId, int locationId)
        {
            if (!isClassUnique(classTypeId, classDate, classDaysId, locationId))
                return;

            if (classDaysId == 1 || classDaysId >= 4)
                while (classDate.DayOfWeek != DayOfWeek.Monday)
                    classDate = classDate.AddDays(1);
            else
            {
                while (classDate.DayOfWeek != DayOfWeek.Saturday)
                    classDate = classDate.AddDays(1);
            }


            _conn.Open();
            try
            {
                var cmd = new OleDbCommand("select max(classId) from classes", _conn);
                string classId = cmd.ExecuteScalar().ToString();

                string insertSql = string.Format("Insert Into classes (classtypeid, classdate, classdaysid, classwho, seatsavailable, locationid, hotelid) " +
                " values ({0},'{1}',{2},'{3}','{4}',{5},{6})",
                classTypeId, classDate, classDaysId, "P3/PM", "Open", locationId, locationId);

                cmd = new OleDbCommand(insertSql, _conn);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                _conn.Close();
            }
        }

        private bool isClassUnique(int classTypeId, DateTime classDate, int classDaysId, int locationId)
        {
            
            _conn.Open();
            OleDbCommand cmd =
                new OleDbCommand(
                    string.Format(
                        "SELECT count(*) as CNT FROM Classes where classtypeid = {0} and classdaysid={1} and locationid={2} and classdate=cdate('{3}');",
                        classTypeId, classDaysId, locationId, classDate), _conn);
            OleDbDataReader myReader = cmd.ExecuteReader();
            string count = "";
            while (myReader.Read())
            {
                count = myReader["CNT"].ToString();
                break;
            }
            myReader.Close();
            _conn.Close();
            return count == "0";
        }
         protected void btnCreateUser_Click(object sender, EventArgs e)
         {
             WebPostRequest req = new WebPostRequest("http://student.pinnacle3learning.com/index.php/add-a-user");
             var dic = new Dictionary<string, string>();
             dic.Add("import", "1");
             dic.Add("name", "jon jon");
             dic.Add("email", "keith.b@pinnacle3.com");

             string s = req.ExecutePostRequest(dic);
             lblMessage.Text = s;
         }
    }
}