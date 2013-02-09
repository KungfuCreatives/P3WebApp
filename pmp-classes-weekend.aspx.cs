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

public partial class pmpclassesweekend : System.Web.UI.Page
{
    public string ClassCost = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        _setClassCost();
    }
    protected override void OnPreRenderComplete(EventArgs e)
    {
        base.OnPreRenderComplete(e);
        RadGrid1.ClientSettings.Scrolling.AllowScroll = RadGrid1.MasterTableView.Items.Count > 10;
    }

    protected void ibtnRegister_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("register.aspx?classID=" + ((sender as ImageButton).CommandArgument));
    }

    private void _setClassCost()
    {
        string pmpCost = ConfigurationManager.AppSettings["Cost_PMPLive"];
        string pmpCostSale = ConfigurationManager.AppSettings["Cost_PMPLive_Sale"];
        if (!string.IsNullOrEmpty(pmpCostSale))
        {
            ClassCost = "<nobr><del>$" + pmpCost + "</del>&nbsp;<font style='color:Red; font-weight:bold'> $" + pmpCostSale + "</font></nobr>";
        }
        else
        {
            ClassCost = "<nobr>$" + pmpCost + "</nobr>";
        }
    }
}
