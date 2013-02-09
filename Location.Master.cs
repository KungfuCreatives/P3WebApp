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
using Telerik.Web.UI;

namespace P3WebApp
{
    public partial class LocationMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Browser.MSDomVersion.Major == 0)
            {
                Response.Cache.SetNoStore();
            }
            if (!IsPostBack)
            {

            }
        }

        public void DataBindBreadCrumbSiteMap(RadSiteMapNode currentItem, string level2Type = null)
        {
            var level1 = new RadSiteMapNode();
            level1.NavigateUrl="pmi-certification.aspx";
            level1.Text = "PMI Certification";
            var level2 = new RadSiteMapNode();
            switch (level2Type)
            {
                case "capm":
                    level2.NavigateUrl = "certified-associate-in-project-management.aspx";
                    level2.Text = "Certified Associate in Project Management (CAPM®)";
                    break;
                case "l6gi":
                    level2.NavigateUrl = "lean-six-sigma-green-belt.aspx";
                    level2.Text = "Lean Six Sigma Green Belt";
                    break;
                case "l6bi":
                    level2.NavigateUrl = "lean-six-sigma-black-belt.aspx";
                    level2.Text = "Lean Six Sigma Black Belt";
                    break;
                case null:
                case "pmp":
                    level2.NavigateUrl = "pmp-certification-training.aspx";
                    level2.Text = "Project Management Professional (PMP®)";
                    break;
            }

            level1.Nodes.Add(level2);
            level2.Nodes.Add(currentItem);
            BreadCrumbSiteMap.Nodes.Add(level1);
            BreadCrumbSiteMap.Nodes.Add(level2);
            BreadCrumbSiteMap.Nodes.Add(currentItem);
        }
    }
}
