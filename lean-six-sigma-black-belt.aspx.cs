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

public partial class SixSigmaBlackBelt : System.Web.UI.Page
{
    public string ClassCost = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected string GetPriceText(DateTime classDate)
    {
        return P3WebApp.DisplayHelper.GetPriceText(classDate, P3WebApp.ClassType.SixSigmaBlackBelt);
    }
    protected int GetPrice(DateTime classDate)
    {
        return P3WebApp.DisplayHelper.GetPrice(classDate, P3WebApp.ClassType.SixSigmaBlackBelt);
    }
    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        var btn = sender as System.Web.UI.WebControls.ImageButton;
        Session["price"] = btn.CommandName;
        Response.Redirect("register.aspx?classID=" + btn.CommandArgument);
    }
}
