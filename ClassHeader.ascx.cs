using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P3WebApp
{
    public partial class ClassHeader : System.Web.UI.UserControl
    {
        public string ClassType { get; set; }
        private bool _showImage = true;
        private bool _initDone = false;
        public bool ShowImage
        {
            set { _showImage = value; } 
        }
        private bool _discountApplied = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                InitControl();
        }

        public void InitControl(int classCost = 0)
        {
            if (classCost > 0)
                _initDone = false;
            if (_initDone)
                return;
            switch (ClassType)
            {
                case "PMP":
                    imgCourse.ImageUrl = "images/pmp-instruction.jpg";
                    imgCourse.Width = Unit.Pixel(150);
                    lblTitle.Text = "PMP Exam Prep";
                    lblCredits.Text = "36";
                    lblDuration.Text = "4";
                    lblCourseNumber.Text = "PMP401";
                    
                    string pmpCost = ConfigurationManager.AppSettings["Cost_PMP"];
                    string pmpCostSale = ConfigurationManager.AppSettings["Cost_PMP_Sale"];
                    if (classCost == 0)
                        classCost = int.Parse(pmpCost);
                    lblCost.Text = "<nobr>$" + classCost + "&nbsp;USD</nobr>";
                    break;
                case "PMPLive":
                    imgCourse.ImageUrl = "images/pmp-instruction.jpg";
                    imgCourse.Width = Unit.Pixel(150);
                    lblTitle.Text = "PMP Exam Prep Online";
                    lblCredits.Text = "36";
                    lblDuration.Text = "4";
                    lblCourseNumber.Text = "PMPW";
                    string pmpLiveCost = ConfigurationManager.AppSettings["Cost_PMPLive"];
                    string pmpLiveCostSale = ConfigurationManager.AppSettings["Cost_PMPLive_Sale"];
                    if (!string.IsNullOrEmpty(pmpLiveCostSale))
                    {
                        classCost = int.Parse(pmpLiveCostSale);
                        lblCost.Text = "<nobr><del>$" + pmpLiveCost + "</del>&nbsp;<font style='color:Red; font-weight:bold'> $" + pmpLiveCostSale + "</font></nobr>";
                    }
                    else
                    {
                        classCost = int.Parse(pmpLiveCost);
                        lblCost.Text = "<nobr>$" + pmpLiveCost + "&nbsp;USD</nobr>";
                    }
                    break;
                case "CAPM":
                    imgCourse.ImageUrl = "images/pmp-instruction.jpg";
                    imgCourse.Width = Unit.Pixel(150);
                    lblTitle.Text = "Certified Associate in Project Management";
                    lblCredits.Text = "36";
                    lblDuration.Text = "4";
                    lblCourseNumber.Text = "CAPM101";
                    string capmCost = ConfigurationManager.AppSettings["Cost_CAPM"];
                    string capmCostSale = ConfigurationManager.AppSettings["Cost_CAPM_Sale"];
                     if (classCost == 0)
                         classCost = int.Parse(capmCost);
                    lblCost.Text = "<nobr>$" + classCost + "&nbsp;USD</nobr>";
                    break;
                case "L6GI":
                    imgCourse.ImageUrl = "images/pmp-instruction.jpg";
                    imgCourse.Width = Unit.Pixel(150);
                    lblTitle.Text = "Lean Six Sigma Green Belt";
                    lblCredits.Text = "21";
                    lblDuration.Text = "3";
                    lblCourseNumber.Text = "L6GI";
                    string l6giCost = ConfigurationManager.AppSettings["Cost_L6GI"];
                    string l6giCostSale = ConfigurationManager.AppSettings["Cost_L6GI_Sale"];
                    if (classCost == 0)
                         classCost = int.Parse(l6giCost);
                    lblCost.Text = "<nobr>$" + classCost + "&nbsp;USD</nobr>";
                    break;
                case "L6BI":
                    imgCourse.ImageUrl = "images/pmp-instruction.jpg";
                    imgCourse.Width = Unit.Pixel(150);
                    lblTitle.Text = "Lean Six Sigma Black Belt";
                    lblCredits.Text = "36";
                    lblDuration.Text = "5";
                    lblCourseNumber.Text = "L6BI";
                    string l6biCost = ConfigurationManager.AppSettings["Cost_L6BI"];
                    string l6biCostSale = ConfigurationManager.AppSettings["Cost_L6BI_Sale"];
                    if (classCost == 0)
                         classCost = int.Parse(l6biCost);
                    lblCost.Text = "<nobr>$" + classCost + "&nbsp;USD</nobr>";
                    break;
                case "Essentials":
                    classCost = int.Parse(ConfigurationManager.AppSettings["COST_Essentials"]);
                    imgCourse.ImageUrl = "images/pmEssentials_img.jpg";
                    imgCourse.Width = Unit.Pixel(130);
                    lblTitle.Text = "PM Essentials";
                    lblCredits.Text = "16";
                    lblDuration.Text = "2";
                    lblCourseNumber.Text = "PM101";
                    lblCost.Text = "$" + classCost + "&nbsp;USD";
                    break;
                case "Risk":
                    classCost = int.Parse(ConfigurationManager.AppSettings["COST_Risk"]);
                    imgCourse.ImageUrl = "images/pmRisk_img1.jpg";
                    imgCourse.Width = Unit.Pixel(130);
                    lblTitle.Text = "Managing Project Risk";
                    lblCredits.Text = "16";
                    lblDuration.Text = "2";
                    lblCourseNumber.Text = "RM101";
                    lblCost.Text = "$" + classCost + "&nbsp;USD";
                    break;
                case "MS Project":
                    classCost = int.Parse(ConfigurationManager.AppSettings["Cost_MS_Project"]);
                    imgCourse.ImageUrl = "images/ms_project.gif";
                    imgCourse.Width = Unit.Pixel(80);
                    lblTitle.Text = "Microsoft Project 2007 Training";
                    lblCredits.Text = "16";
                    lblDuration.Text = "2";
                    lblCourseNumber.Text = "MP101";
                    lblCost.Text = "$" + classCost + "&nbsp;USD";
                    break;
            }
            imgCourse.Visible = _showImage;
            ViewState["originalamount"] = classCost;
            _initDone = true;
        }

        //public void SetDiscount(int classCost, int discount)
        //{
        //    pnlDiscount.Visible = true;
        //    lblDiscount.Text = discount.ToString();
        //    lblCost.Text = classCost.ToString();
        //    _discountApplied = true;
        //}
    }
}