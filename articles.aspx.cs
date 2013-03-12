using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace P3WebApp
{
    public partial class articles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected string GetSubstring(string str, int length)
        {
            return str.Length > length ? str.Substring(0, length) + "..." : str;
        }
    }
}