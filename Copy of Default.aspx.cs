using System;
using System.Configuration;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using P3WebApp;

public partial class _Default : System.Web.UI.Page 
{

    protected string GetPriceText(DateTime classDate)
    {
        return DisplayHelper.GetPriceText(classDate, ClassType.PMP);
    }
    protected int GetPrice(DateTime classDate)
    {
        return DisplayHelper.GetPrice(classDate, ClassType.PMP);
    }
    protected string GetComment(string comment, DateTime classDate)
    {
        return DisplayHelper.GetComment(comment, classDate);
    }
    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        var btn = sender as System.Web.UI.WebControls.ImageButton;
        Session["price"] = btn.CommandName;
        Response.Redirect("register.aspx?classID=" + btn.CommandArgument);
    }
}
