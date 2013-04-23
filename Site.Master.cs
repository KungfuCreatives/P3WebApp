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
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        public MiniContactForm MiniContactForm
        {
            get { return MiniContactForm1; }
        }
        public RadMenu RadMenu
        {
            get { return RadMenuMain; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.Url.Scheme == "https")
            {
                Response.Redirect("http://" + Request.ServerVariables["HTTP_HOST"] + Request.RawUrl);
            }
            if (Request.Browser.MSDomVersion.Major == 0)
            {
                Response.Cache.SetNoStore();
            }
            RadMenuItem currentItem = RadMenuMain.FindItemByUrl(Request.Url.PathAndQuery);
            if (currentItem != null)
            {
                //Populate the breadcrumb
                DataBindBreadCrumbSiteMap(currentItem);
            }
            if (!IsPostBack)
            {
                ConfigureRadCustomerRotator();
            }
        }
        public void DataBindBreadCrumbSiteMap(RadMenuItem currentItem)
        {
            //Select the current item and his parents
            currentItem.HighlightPath();
            List<RadMenuItem> breadCrumbPath = new List<RadMenuItem>();
            while (currentItem != null)
            {
                breadCrumbPath.Insert(0, currentItem);
                currentItem = currentItem.Owner as RadMenuItem;
            }
            BreadCrumbSiteMap.DataSource = breadCrumbPath;
            BreadCrumbSiteMap.DataBind();
        }

        string virtualPath = "~/customers";
        private void ConfigureRadCustomerRotator()
        {
            List<string> imagePaths = GetFilesInCustomerFolder(virtualPath);
            Random rand = new Random();
            RadRotator1.InitialItemIndex = rand.Next(imagePaths.Count - 1);
            RadRotator1.DataSource = imagePaths;
            RadRotator1.DataBind();
        }
        /// <summary>
        /// Returns all virtual paths to files located in the given virtual directory
        /// </summary>
        /// <param name="folderVirtualPath">A virtual directory</param>
        /// <returns>The virtual paths</returns>
        protected List<string> GetFilesInCustomerFolder(string folderVirtualPath)
        {
            string physicalPathToFolder = Server.MapPath(folderVirtualPath);// Get the physical path
            string[] physicalPathsCollection = System.IO.Directory.GetFiles(physicalPathToFolder);// Get all child files of the given folder
            List<string> virtualPathsCollection = new List<string>();// Contains the result

            foreach (String path in physicalPathsCollection)
            {
                // The value of virtualPath will be similar to '~/PathToFolder/Image1.jpg
                string virtualPath = VirtualPathUtility.AppendTrailingSlash(folderVirtualPath) + System.IO.Path.GetFileName(path);
                virtualPathsCollection.Add(virtualPath);
            }
            return virtualPathsCollection;
        }

        protected void RadRotator2_ItemClick(object sender, RadRotatorEventArgs e)
        {
            Response.Redirect("testimonials.aspx");
        }
    }
}
