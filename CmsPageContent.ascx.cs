using System;
using System.Linq;
using System.Web.UI;
using System.Xml;
using System.Xml.Linq;

namespace P3WebApp
{
    public partial class CmsPageContent : UserControl
    {
        public string PageTitle { get; set; }
        public bool SkipLoading { get; set; }
        public string ContentText { get { return lblContent.Text; } }

        public event EventHandler OnContentTextChanged;
        public event EventHandler OnUnableToFindContent;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (SkipLoading)
                return;

            XDocument xdoc = XDocument.Load("http://pmpexampass.info/?feed=rss2&cat=-1");

            XNamespace contentNs = XNamespace.Get("http://purl.org/rss/1.0/modules/content/");

            var q = from item in xdoc.Descendants("rss").Elements("channel").Elements("item")
                    where item.Element("title").Value == PageTitle
                    select new
                               {
                                   title = item.Element("title").Value,
                                   content = item.Element(contentNs + "encoded").Value,
                                   published = item.Element("pubDate").Value
                               };
            bool foundContent = false;
            foreach (var obj in q)
            {
                lblContent.Text = obj.content;
                if (OnContentTextChanged != null)
                    OnContentTextChanged(sender, e);
                foundContent = true;
                break;
            }
            if (!foundContent)
            {
                if (OnUnableToFindContent != null)
                    OnUnableToFindContent(sender, e);
            }
        }
    }
}