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

public partial class receipt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int studentID = 0;

        /*
        string trainingCost = Request.Form.Get("orderAmount");
        string fname = Request.Form.Get("billTo_firstName");
        string lname = Request.Form.Get("billTo_lastName");
        string address = Request.Form.Get("billTo_street1");
        string city = Request.Form.Get("billTo_city");
        string state = Request.Form.Get("billTo_state");
        string zip = Request.Form.Get("billTo_postalCode");
        string email = Request.Form.Get("billTo_email");
        string country = Request.Form.Get("billTo_country");
        string phoneNum = Request.Form.Get("billTo_phoneNumber");

        //int classID = Convert.ToInt32(Request.Form.Get("merchantDefinedData1"));
        bool paid = true;

        OleDbConnection conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["classDBF"].ConnectionString);
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Student (Paid,TrainingCost,Contact_fname,Contact_lname,address,city,state,zipcode,country,phone,email) VALUES('1','" + trainingCost + "','" + fname + "','" + lname + "','" + address + "','" + city + "','" + state + "','" + zip + "','" + country + "','" + phoneNum + "','" + email + "');", conn);

        conn.Open();
        OleDbDataReader myReader = cmd.ExecuteReader();

        while (myReader.Read())
        {
            //studentID = Convert.ToInt32(myReader["studentID"].ToString());
        }
        myReader.Close();
        
        conn.Close();
        */
    }
}
