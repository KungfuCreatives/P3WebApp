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
    public partial class location_capm : System.Web.UI.Page
    {
        public string City;
        public string LocationSeo;
        public string Hotel;
        public string HotelAddress;
        public string HotelNumber;
        public string HotelDescription;
        public string HotelWebsite;
        private int classCost = 0;

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
                this.DataBind();
            }

            ClassHeader1.InitControl(classCost);
            CmsLocationContent.PageTitle = City + " CAPM";
            CmsLocationContent.OnContentTextChanged += new EventHandler(CmsLocationContent_OnContentTextChanged);

            var m = Master as LocationMaster;
            var newMenuItem = new RadSiteMapNode();
            newMenuItem.Text = City;

        }
        
        void CmsLocationContent_OnContentTextChanged(object sender, EventArgs e)
        {
            pnlRssDetails.Visible = !string.IsNullOrEmpty(CmsLocationContent.ContentText);
            pnlStaticDetails.Visible = !pnlRssDetails.Visible;
        }

        private void _loadCityDetails()
        {
            OleDbConnection conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["classDBF"].ConnectionString);
            OleDbCommand cmd = new OleDbCommand("SELECT * FROM Locations, Hotels WHERE Locations.LocationID = Hotels.HotelID AND LocationSeo='" + LocationSeo + "'", conn);

            conn.Open();
            OleDbDataReader myReader = cmd.ExecuteReader();

            while (myReader.Read())
            {
                City = myReader["LocationDesc"].ToString();
                //City = City.Substring(0, City.IndexOf(','));
                imgHotel.ImageUrl = "images/hotels/" + LocationSeo + ".jpg";
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
        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            var btn = sender as System.Web.UI.WebControls.ImageButton;
            Session["price"] = btn.CommandName;
            Response.Redirect("register.aspx?classID=" + btn.CommandArgument);
        }

        protected string GetPriceText(DateTime classDate)
        {
            return DisplayHelper.GetPriceText(classDate, ClassType.CAPM);
        }
        protected int GetPrice(DateTime classDate)
        {
            int cost = DisplayHelper.GetPrice(classDate, ClassType.CAPM);
            if (classCost < cost)
                classCost = cost;
            return cost;
        }
        protected string GetComment(string comment, DateTime classDate)
        {
            return DisplayHelper.GetComment(comment, classDate);
        }
    }
}