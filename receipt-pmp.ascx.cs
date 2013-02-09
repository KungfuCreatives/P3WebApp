using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P3WebApp
{
    public partial class receipt_pmp : System.Web.UI.UserControl
    {
        public string StudentName;
        public string InvoiceDate;
        public string InvoiceNum;
        public string StudentAddress;
        public string StudentCityStateZip;
        public string Course;
        public string Description;
        public string ClassDate;
        public string UnitPrice;
        public string Discount;
        public string Total;
        public string Paid;
        public int AmountPaid;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}