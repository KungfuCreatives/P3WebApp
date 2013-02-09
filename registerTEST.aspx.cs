using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Drawing;

public partial class registerTEST : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            int testID = 400;
        
            //OleDbConnection conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["classDBlocal2"].ConnectionString);
            OleDbConnection conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["classDBF"].ConnectionString);
            OleDbCommand cmd = new OleDbCommand("SELECT classes.ClassID, classes.HOT, (Format(classes.ClassDate,'mm/dd/yyyy')) as ClassDate, classes.numdays, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.Hotel, Hotels.HotelWebsite, Locations.LocationDesc FROM Locations INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN (ClassType INNER JOIN classes ON ClassType.classTypeID = classes.ClassTypeID) ON DaysOfWeek.DaysOfWeekID = classes.ClassDaysID) ON Hotels.HotelID = classes.HotelID) ON Locations.LocationID = classes.LocationID WHERE classID = " + Convert.ToInt32(testID), conn);

            conn.Open();
            OleDbDataReader myReader = cmd.ExecuteReader();

            while (myReader.Read())
            {
                classID.Text = myReader["ClassID"].ToString();
                locationLabel.Text = myReader["LocationDesc"].ToString();
                hotelLabel.Text = myReader["Hotel"].ToString();
                hotelInfoLink.NavigateUrl = myReader["HotelWebsite"].ToString();
                classDate.Text = myReader["ClassDate"].ToString();
                classDays.Text = myReader["Description"].ToString();
                if (myReader["HOT"].ToString() == "images/discount_img.gif")
                {
                    costPerStudent.Text = "2195";
                    couponCode.Text = "Discount Already Applied";
                    couponCode.Enabled = false;
                    applyCode.Enabled = false;
                }
                else
                {
                    costPerStudent.Text = "5";
                }
            }
            myReader.Close();
            conn.Close();
       
    }
    protected void nextStep_Click(object sender, EventArgs e)
    {
        int amountToCharge = Convert.ToInt32(numberOfStudents.SelectedValue) * Convert.ToInt32(costPerStudent.Text);

        Session.Add("studentNum", numberOfStudents.SelectedValue.ToString());
        Session.Add("amountToCharge", amountToCharge.ToString());
        Session.Add("classLocation", locationLabel.Text);
        Session.Add("classDate", classDate.Text);
        Response.Redirect("https://www.pinnacle3learning.com/checkout.aspx");  
    }
    private void confirmCode()
    {
        codeConf.Visible = true;
        codeConf.ForeColor = Color.Green;
        codeConf.Text = "Code Accepted. Proceed to checkout.";
        applyCode.Visible = false;
        couponCode.Visible = false;
    }
    private void failCode()
    {
        codeConf.Visible = true;
        codeConf.ForeColor = Color.Red;
        codeConf.Text = "Invalid Code.";
    }

    protected void applyCode_Click1(object sender, EventArgs e)
    {
        double totalAmount = Convert.ToDouble(costPerStudent.Text);

        switch (couponCode.Text)
        {
            case "BAH2009":
                totalAmount = 1500;
                confirmCode();
                break;
            case "PMP250":
                totalAmount = totalAmount - 250;
                confirmCode();
                break;
            case "PMP500":
                totalAmount = totalAmount - 500;
                confirmCode();
                break;
            case "PMP750":
                totalAmount = totalAmount - 750;
                confirmCode();
                break;
            default:
                failCode();
                break;
        }
        costPerStudent.Text = totalAmount.ToString();
    }
}
