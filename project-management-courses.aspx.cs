using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;
using Telerik.Web.UI;
using P3WebApp.App_Code;

public partial class ProjectManagementCourses : System.Web.UI.Page
{
    DataTable dt;

    protected void RadGrid1_NeedDataSource(object source, GridNeedDataSourceEventArgs e)
    {
        dt = GetDataTable("SELECT classes.ClassID, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.HotelWebsite, Locations.LocationDesc as City, classes.HOT, (Format(classes.ClassDate,\"mm/dd/yyyy\")) as ClassDate, classes.SeatsAvailable, classes.numdays, classes.ClassDaysID FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID WHERE (((classes.ClassDate)>=Now())) AND classes.ClassTypeID=1 AND classes.ClassDaysID = 1 ORDER BY classes.ClassDate;");
        this.RadGrid1.DataSource = dt;
    }

    public static DataTable GetDataTable(string query)
    {
        string ConnString = ConfigurationManager.ConnectionStrings["classDBF"].ConnectionString;
        OleDbConnection conn = new OleDbConnection(ConnString);
        OleDbDataAdapter adapter = new OleDbDataAdapter();
        adapter.SelectCommand = new OleDbCommand(query, conn);

        DataTable myDataTable = new DataTable();

        conn.Open();
        try
        {
            adapter.Fill(myDataTable);
        }
        finally
        {
            conn.Close();
        }
        return myDataTable;
    }
}
