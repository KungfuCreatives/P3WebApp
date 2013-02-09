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
using System.Data.OleDb;
using System.Xml.Linq;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        error.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int lgflg = 0;

        OleDbConnection conn = new OleDbConnection(ConfigurationSettings.AppSettings["classDB"]);
        OleDbCommand cmd = new OleDbCommand("SELECT * FROM student WHERE studentpassword = '" + password.Text + "' AND email = '" + userName.Text + "'", conn); 	  

	    conn.Open();
	    OleDbDataReader myReader = cmd.ExecuteReader();

	    while (myReader.Read())
	    {
		    lgflg = 1;
            Session.Add("fname", myReader["Contact_name"]);
            Session.Add("address", myReader["address"]);
            Session.Add("city", myReader["city"]);
            Session.Add("state", myReader["state"]);
            Session.Add("zipcode", myReader["zipcode"]);
	    }
	    myReader.Close();	
	    conn.Close();

        if (lgflg == 1)
        {
            Response.Write(Session["fname"]);
        }
        else
        {
            error.Visible = true;
        }
    }
}
