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

public partial class classSchedule : System.Web.UI.Page
{
    protected void registerClass_ItemCommand(object sender, CommandEventArgs e)
    {
        int classID = Convert.ToInt32(e.CommandArgument);
        Session.Add("classID", classID.ToString());
        Response.Redirect("register.aspx");
    }
    
}
