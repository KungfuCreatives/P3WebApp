using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace P3WebApp
{
    public partial class article : System.Web.UI.Page
    {
        protected string canonical;
        protected void Page_Load(object sender, EventArgs e)
        {
            canonical = Request.QueryString["t"];
            XmlDocument xmlDoc = new XmlDocument();

            XDocument xdoc = XDocument.Load("http://pmpexampass.info/?feed=rss2&cat=-1");

            XNamespace contentNs = XNamespace.Get("http://purl.org/rss/1.0/modules/content/");

            var q = from item in xdoc.Descendants("rss").Elements("channel").Elements("item")
                    where item.Element("title").Value == Request.QueryString["t"]
                    select new
                    {
                        title = item.Element("title").Value,
                        content = item.Element(contentNs + "encoded").Value,
                        published = item.Element("pubDate").Value
                    };
            foreach (var obj in q)
            {
                lblTitle.Text = obj.title;
                ltrContent.Text = obj.content;
                DateTime pubDate;
                if (DateTime.TryParse(obj.published.ToString(), out pubDate))
                    lblPublished.Text = "Published: " + String.Format("{0:ddd, MMM d, yyyy}", pubDate);
                break;
            }
        }
    }
}