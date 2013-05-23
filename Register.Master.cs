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
    public partial class RegisterMaster : System.Web.UI.MasterPage
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
        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);
            var seoTag = new HtmlLink();
            seoTag.Attributes.Add("rel", "canonical");
            var canonicalLink = "http://" + Request.Url.DnsSafeHost + Request.RawUrl.ToString().ToLower().Replace("www", "");
            seoTag.Href = canonicalLink;
            MetaContent.Controls.Add(seoTag);
        }

    }
}
