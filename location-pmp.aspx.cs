using System;
using System.Configuration;
using System.Data.OleDb;
using Telerik.Web.UI;

namespace P3WebApp
{
    public partial class location_pmp : System.Web.UI.Page
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
            CmsLocationContent.PageTitle = City + " PMP";
            CmsLocationContent.OnContentTextChanged += new EventHandler(CmsLocationContent_OnContentTextChanged);

            cmsPageContent_FAQs_City.PageTitle = "PMP FAQs " + City;
            cmsPageContent_FAQs_City.OnContentTextChanged += new EventHandler(cmsPageContent_FAQs_City_OnContentTextChanged);

            cmsPageContent_PmpApplication_City.PageTitle = "PMP Application " + City;
            cmsPageContent_PmpApplication_City.OnContentTextChanged += new EventHandler(cmsPageContent_PmpApplication_City_OnContentTextChanged);

            cmsPageContent_WhyUs_City.PageTitle = "P3 Why Us? " + City;
            cmsPageContent_WhyUs_City.OnContentTextChanged += new EventHandler(cmsPageContent_WhyUs_City_OnContentTextChanged);

            var m = Master as LocationMaster;
            var newMenuItem = new RadSiteMapNode();
            newMenuItem.Text = City;

        }

        void cmsPageContent_WhyUs_City_OnContentTextChanged(object sender, EventArgs e)
        {
            cmsPageContent_WhyUs_City.Visible = true;
            cmsPageContent_WhyUs_General.Visible = false;
        }

        void cmsPageContent_PmpApplication_City_OnContentTextChanged(object sender, EventArgs e)
        {
            cmsPageContent_PmpApplication_City.Visible = true;
            cmsPageContent_PmpApplication_General.Visible = false;
        }

        void cmsPageContent_FAQs_City_OnContentTextChanged(object sender, EventArgs e)
        {
            cmsPageContent_FAQs_City.Visible = true;
            cmsPageContent_FAQs_General.Visible = false;
        }

        void CmsLocationContent_OnContentTextChanged(object sender, EventArgs e)
        {
             pnlRssDetails.Visible = !string.IsNullOrEmpty(CmsLocationContent.ContentText);
             pnlStaticDetails.Visible = !pnlRssDetails.Visible;
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
                //City = City.Substring(0, City.IndexOf(','));
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
        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            var btn = sender as System.Web.UI.WebControls.ImageButton;
            Session["price"] = btn.CommandName;
            Response.Redirect("register.aspx?classID=" + btn.CommandArgument);
        }

        protected string GetPriceText(DateTime classDate)
        {
            return DisplayHelper.GetPriceText(classDate, ClassType.PMP);
        }
        protected int GetPrice(DateTime classDate)
        {
            int cost = DisplayHelper.GetPrice(classDate, ClassType.PMP);
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