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
using Subgurim.Controles.SSM;

namespace P3WebApp
{
    public partial class LocationMaster : System.Web.UI.MasterPage
    {
        public bool ShouldLoadCMSContent { get; set; }
        public event EventHandler OnCMSContentLoaded;
        public XDocument XDocRssFeed { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Url.ToString().Contains(".aspx"))
                SubgurimSiteMapBLL.deleteSiteMap(Request.Url.ToString() + "?%3f");
            else
                SubgurimSiteMapBLL.addSiteMap(Request.Url.ToString());

            if (Request.Url.Scheme == "https")
            {
                Response.Redirect("http://" + Request.ServerVariables["HTTP_HOST"] + Request.RawUrl); 
            }
            if (Request.Browser.MSDomVersion.Major == 0)
            {
                Response.Cache.SetNoStore();
            }
            if (!IsPostBack)
            {

            }
            if (ShouldLoadCMSContent)
            {
                XDocRssFeed = XDocument.Load("http://pmpexampass.info/?feed=rss2&cat=-1");
                OnCMSContentLoaded(sender, e);
            }
        }

    }
}
