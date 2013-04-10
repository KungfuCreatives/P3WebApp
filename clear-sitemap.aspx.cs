using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Subgurim.Controles.SSM;

namespace P3WebApp
{
    public partial class clear_sitemap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SubgurimSiteMapBLL.clearSiteMap();
        }
    }
}