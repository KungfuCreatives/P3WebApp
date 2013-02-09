using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace P3WebApp
{
    public partial class location_sixsigma_green_old : System.Web.UI.Page
    {
        public string City;
        public string LocationSeo;
        public string Hotel;
        public string HotelAddress;
        public string HotelNumber;
        public string HotelDescription;
        public string HotelWebsite;
        public string ClassCost = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["l"] == null)
                {
                    Response.Redirect(".");
                }
                LocationSeo = Request.QueryString["l"].Replace("?", "");
                classDB.SelectParameters["Location"].DefaultValue = LocationSeo;
                _loadCityDetails();
            }
            var m = Master as SiteMaster;
            var newMenuItem = new RadMenuItem(City);
            var curItem = m.RadMenu.FindItemByText("Lean Six Sigma Green Belt");
            curItem.Items.Add(newMenuItem);
            m.DataBindBreadCrumbSiteMap(newMenuItem);
            _setClassCost();
        }
        protected override void OnPreRenderComplete(EventArgs e)
        {
            base.OnPreRenderComplete(e);
            RadGrid1.ClientSettings.Scrolling.AllowScroll = RadGrid1.MasterTableView.Items.Count > 10;
        }
        private void _loadCityDetails()
        {        
            OleDbConnection conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["classDBF"].ConnectionString);
            OleDbCommand cmd = new OleDbCommand("SELECT * FROM Locations, Hotels WHERE Locations.LocationID = Hotels.HotelID AND LocationSeo='" + LocationSeo+"'", conn);

            conn.Open();
            OleDbDataReader myReader = cmd.ExecuteReader();

            while (myReader.Read())
            {
                City = myReader["LocationDesc"].ToString();
                // City = City.Substring(0, City.IndexOf(','));
                imgHotel.ImageUrl = "images/hotels/" + LocationSeo + ".gif";
                Hotel = myReader["Hotel"].ToString();
                HotelWebsite = myReader["HotelWebsite"].ToString();
                HotelAddress = myReader["Address"].ToString();
                HotelNumber = myReader["HotelNumber"].ToString();
                HotelDescription = myReader["HotelDescription"].ToString();
                hypHotelWebsite.NavigateUrl = HotelWebsite;
                hypHotelWebsite.Visible = !string.IsNullOrEmpty(HotelWebsite);
                break;
            }
            myReader.Close();
            conn.Close();
        }
        private void _setClassCost()
        {
            string pmpCost = ConfigurationManager.AppSettings["Cost_L6GI"];
            string pmpCostSale = ConfigurationManager.AppSettings["Cost_L6GI_Sale"];
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
}