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

public partial class PmpCertificationTraining : System.Web.UI.Page
{
    public string ClassCost = "";
    private int pmpCost = int.Parse(ConfigurationManager.AppSettings["Cost_PMP"]);
    private int pmpCostSale = int.Parse(ConfigurationManager.AppSettings["Cost_PMP_Sale"]);
    private int earlyBirdDuration = int.Parse(ConfigurationManager.AppSettings["EarlyBirdDuration"]);
    private int earlyBirdDiscountAmount = int.Parse(ConfigurationManager.AppSettings["EarlyBirdDiscountAmount"]);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected override void OnPreRenderComplete(EventArgs e)
    {
        base.OnPreRenderComplete(e);
        RadGrid1.ClientSettings.Scrolling.AllowScroll = RadGrid1.MasterTableView.Items.Count > 10;
    }

    protected string GetPriceText(DateTime classDate)
    {
        return P3WebApp.DisplayHelper.GetPriceText(classDate, P3WebApp.ClassType.PMP);
    }
    protected int GetPrice(DateTime classDate)
    {
        return P3WebApp.DisplayHelper.GetPrice(classDate, P3WebApp.ClassType.PMP);
    }
    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        var btn = sender as System.Web.UI.WebControls.ImageButton;
        Session["price"] = btn.CommandName;
        Response.Redirect("register.aspx?classID=" + btn.CommandArgument);
    }
}
