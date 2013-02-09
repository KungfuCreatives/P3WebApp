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

public partial class classSchedule_pmp_weekdays : System.Web.UI.Page
{
    protected void Page_Load(object sender, System.EventArgs e)
    {
        Response.Status = "301 Moved Permanently";
        Response.AddHeader("Location", "project-management-courses.aspx");
    }
}
