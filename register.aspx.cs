using System;
using System.Configuration;
using System.Data.OleDb;
using System.Web.UI;
using P3WebApp.App_Code;
using P3WebApp.sforce;

namespace P3WebApp
{
    public partial class register : System.Web.UI.Page
    {
        public string className = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            SampleCaptcha.UserInputClientID = CaptchaCode.ClientID;

            if (!IsPostBack)
            {
                CaptchaErrorLabel.Text = "Incorrect CAPTCHA code";
                CaptchaErrorLabel.Visible = false;

                int classIdInt = 0;

                if (Request.QueryString["classID"] == null || !int.TryParse(Request.QueryString["classID"], out classIdInt))
                {
                    Response.Redirect("http://pinnacle3learning.com");
                }
                else
                {
                    string classId = string.Empty;
                    string locationDesc = string.Empty;
                    string hotel = string.Empty;
                    string hotelWebsite = string.Empty;
                    string hotelAddress = string.Empty;
                    string description = string.Empty;
                    string classTypeDesc = string.Empty;
                    bool hot = false;
                    DateTime classDateTime = DateTime.MaxValue;


                    OleDbConnection conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["classDBF"].ConnectionString);
                    OleDbCommand cmd = new OleDbCommand("SELECT classes.ClassID, classes.HOT, (Format(classes.ClassDate,'mm/dd/yyyy')) as ClassDate, classes.numdays, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.*, Locations.* FROM Locations INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN (ClassType INNER JOIN classes ON ClassType.classTypeID = classes.ClassTypeID) ON DaysOfWeek.DaysOfWeekID = classes.ClassDaysID) ON Hotels.HotelID = classes.HotelID) ON Locations.LocationID = classes.LocationID WHERE classID = " + classIdInt, conn);
                    conn.Open();
                    OleDbDataReader myReader = cmd.ExecuteReader();

                    while (myReader.Read())
                    {
                        classId = myReader["ClassID"].ToString();
                        locationDesc = myReader["LocationDesc"].ToString();
                        hotel = myReader["Hotel"].ToString();
                        hotelAddress = myReader["Address"].ToString();
                        hotelWebsite = myReader["HotelWebsite"].ToString();
                        description = myReader["Description"].ToString();
                        hot = myReader["HOT"].ToString() == "images/discount_img.gif";
                        classDateTime = DateTime.Parse(myReader["ClassDate"].ToString());
                        classTypeDesc = myReader["classTypeDesc"].ToString();

                        break;
                    }
                    myReader.Close();
                    conn.Close();

                    classID.Text = classId;
                    locationLabel.Text = locationDesc;
                    hotelLabel.Text = hotel + "<br />" + hotelAddress;
                    hotelInfoLink.NavigateUrl = hotelWebsite;
                    hotelInfoLink.Visible = !string.IsNullOrEmpty(hotelWebsite);
                    

                    //Turn on the descriptive panels
                    pnlPMPCert.Visible = classTypeDesc == "PMP";

                    ClassHeader1.ClassType = classTypeDesc;

                    int classCost = 0;
                    if (Session["Price"] != null && int.TryParse(Session["Price"].ToString(),out classCost))
                    {
                        ClassHeader1.InitControl(classCost);
                    }
                    else
                        switch (classTypeDesc)
                        {
                            case "PMP":
                                if (classCost == 0)
                                {
                                    string pmpCost = ConfigurationManager.AppSettings["Cost_PMP"];
                                    string pmpCostSale = ConfigurationManager.AppSettings["Cost_PMP_Sale"];
                                    if (!string.IsNullOrEmpty(pmpCostSale) && int.Parse(pmpCostSale) >-1)
                                    {
                                        classCost = int.Parse(pmpCostSale);
                                    }
                                    else
                                    {
                                        classCost = int.Parse(pmpCost);
                                    }
                                }
                                break;
                            case "PMPLive":
                                if (classCost == 0)
                                {
                                    string pmpLiveCost = ConfigurationManager.AppSettings["Cost_PMPLive"];
                                    string pmpLiveCostSale = ConfigurationManager.AppSettings["Cost_PMPLive_Sale"];
                                    if (!string.IsNullOrEmpty(pmpLiveCostSale) && int.Parse(pmpLiveCostSale) > -1)
                                    {
                                        classCost = int.Parse(pmpLiveCostSale);
                                    }
                                    else
                                    {
                                        classCost = int.Parse(pmpLiveCost);
                                    }
                                }
                                break;
                            case "CAPM":
                                if (classCost == 0)
                                {
                                    string capmCost = ConfigurationManager.AppSettings["Cost_CAPM"];
                                    string capmCostSale = ConfigurationManager.AppSettings["Cost_CAPM_Sale"];
                                    if (!string.IsNullOrEmpty(capmCostSale) && int.Parse(capmCostSale) > -1)
                                    {
                                        classCost = int.Parse(capmCostSale);
                                    }
                                    else
                                    {
                                        classCost = int.Parse(capmCost);
                                    }
                                }
                                break;
                            case "L6GI":
                                if (classCost == 0)
                                {
                                    string l6giCost = ConfigurationManager.AppSettings["Cost_L6GI"];
                                    string l6giCostSale = ConfigurationManager.AppSettings["Cost_L6GI_Sale"];
                                    if (!string.IsNullOrEmpty(l6giCostSale) && int.Parse(l6giCostSale) > -1)
                                    {
                                        classCost = int.Parse(l6giCostSale);
                                    }
                                    else
                                    {
                                        classCost = int.Parse(l6giCost);
                                    }
                                }
                                break;
                            case "L6BI":
                                if (classCost == 0)
                                {
                                    string l6biCost = ConfigurationManager.AppSettings["Cost_L6BI"];
                                    string l6biCostSale = ConfigurationManager.AppSettings["Cost_L6BI_Sale"];
                                    if (!string.IsNullOrEmpty(l6biCostSale) && int.Parse(l6biCostSale) > -1)
                                    {
                                        classCost = int.Parse(l6biCostSale);
                                    }
                                    else
                                    {
                                        classCost = int.Parse(l6biCost);
                                    }
                                }
                                break;
                            case "Essentials":
                                if (classCost == 0)
                                {
                                    classCost = int.Parse(ConfigurationManager.AppSettings["COST_Essentials"]);
                                    //if (hot)
                                    //{
                                    //    classCost = classCost - 250;
                                    //    ClassHeader1.SetDiscount(classCost, 250);
                                    //}
                                }
                                break;
                            case "Risk":
                                if (classCost == 0)
                                {
                                    classCost = int.Parse(ConfigurationManager.AppSettings["COST_Risk"]);
                                    //if (hot)
                                    //{
                                    //    classCost = classCost - 250;
                                    //    ClassHeader1.SetDiscount(classCost, 250);
                                    //}
                                }
                                break;
                            case "MS Project": 
                                if (classCost == 0)
                                {
                                    classCost = int.Parse(ConfigurationManager.AppSettings["Cost_MS_Project"]);
                                    //if (hot)
                                    //{
                                    //    classCost = classCost - 200;
                                    //    ClassHeader1.SetDiscount(classCost, 200);
                                    //}
                                }
                                break;
                        }
                    switch (classTypeDesc)
                    {
                        case "PMP":
                            classDate.Text = string.Format("{0:MMM dd} - {1:dd}", classDateTime, classDateTime.AddDays(3));
                            className = "PMP Exam Prep";
                            break;
                        case "PMPLive":
                            classDate.Text = string.Format("{0:MMM dd}", classDateTime);
                            className = "PMP Online";
                            break;
                        case "CAPM":
                            classDate.Text = string.Format("{0:MMM dd} - {1:dd}", classDateTime, classDateTime.AddDays(3));
                            className = classTypeDesc;
                            break;
                        case "L6GI":
                            classDate.Text = string.Format("{0:MMM dd} - {1:dd}", classDateTime, classDateTime.AddDays(2));
                            className = "Lean Six Sigma Green Belt";
                            break;
                        case "L6BI":
                            classDate.Text = string.Format("{0:MMM dd} - {1:dd}", classDateTime, classDateTime.AddDays(4));
                            className = "Lean Six Sigma Black Belt";
                            break;
                        case "Essentials":
                            classDate.Text = string.Format("{0:MMM dd}", classDateTime);
                            className = classTypeDesc;
                            break;
                        case "Risk":
                            classDate.Text = string.Format("{0:MMM dd}", classDateTime);
                            className = classTypeDesc;
                            break;
                        case "MS Project":
                            classDate.Text = string.Format("{0:MMM dd}", classDateTime);
                            className = classTypeDesc;
                            break;
                    }
                    ViewState["originalamount"] = classCost;
                }
            }
        }

        private bool validateForm()
        {
            string userInput = CaptchaCode.Text;
            bool isHuman = SampleCaptcha.Validate(userInput);
            CaptchaCode.Text = null; // clear previous user input

            if (isHuman)
            {
                CaptchaErrorLabel.Visible = false;
            }
            else
            {
                CaptchaErrorLabel.Visible = true;
            }
            return !CaptchaErrorLabel.Visible;
        }

        protected void nextStep_Click(object sender, EventArgs e)
        {
            if (!validateForm())
                return;
            int amountToCharge = Convert.ToInt32(ViewState["originalamount"]);

            string firstName = billTo_firstName.Text;
            string lastName = billTo_lastName.Text;
            string city = billTo_city.Text;
            string country = billTo_country.Text;
            string address = billTo_street1.Text;
            string state = billTo_state.Text;
            string zip = billTo_postalCode.Text;
            string phone = billTo_phoneNumber.Text;
            string email = billTo_email.Text;
            string numstudents = "1"; // numberOfStudents.SelectedValue.ToString();
            string comments = billto_comments.Text;
            string couponcode = ""; // couponCode.Text;
            string registrationId = "0";
            string company = txtcompany.Text;
            string leadsource = (findUs.SelectedItem.Text + " " + sourceOther.Text);
            var conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["classDBF"].ConnectionString);
            conn.Open();
            try
            {
                string insertSql =
                    string.Format(
                        "Insert Into registration ( classId, amounttocharge, firstname, lastname, address, city , state, zipcode, country, phone, email, numstudents, couponcode, comments, DateCreated, company, leadsource ) " +
                        " values ({0},{1},'{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}',{11},'{12}', '{13}', '" +
                        DateTime.Now + "','{14}', '{15}')",
                        classID.Text, amountToCharge, firstName, lastName, address, city, state, zip, country, phone, email,
                        numstudents, couponcode, comments, company, leadsource);

                var cmd = new OleDbCommand(insertSql, conn);
                cmd.ExecuteNonQuery();
                cmd = new OleDbCommand("select max(registrationid) from registration", conn);
                registrationId = cmd.ExecuteScalar().ToString();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                return;
            }
            finally
            {
                conn.Close();
            }

            if (ConfigurationManager.AppSettings["SendLeadsToSalesForce"] == "true")
            {
                try
                {
                    var sf = new SalesForceHelper();

                    var lead = new Lead();
                    lead.FirstName = firstName;
                    lead.LastName = lastName;
                    lead.Company = company;
                    lead.Email = email;
                    lead.Phone = phone;
                    if (leadsource.Length > 40)
                        leadsource = leadsource.Substring(0, 40);
                    lead.LeadSource = leadsource;
                    lead.Street = address;
                    lead.City = city;
                    lead.State = state;
                    lead.PostalCode = zip;
                    lead.Description = "Web Site Registration Initiated - " + locationLabel.Text + " " + ClassHeader1.ClassType + " " + classDate.Text + " Comments: " + billto_comments.Text;

                    var sr = sf.Binding.create(new sObject[] {lead});

                    foreach (var s in sr)
                    {
                        if (s.success)
                        {
                            Session["LeadId"] = s.id;
                            break;
                        }
                        throw new Exception(string.Format("Error creating Lead: {0}", s.errors[0].message));
                    }
                }
                catch (Exception ex)
                {
                    var objSendEmail = new SendMail();
                    objSendEmail.IsHTML = true;
                    objSendEmail.Subject = "Error on pinnacle3learning.com - SalesForce Integration";
                    string body = "<b>Message</b><br>" + ex.Message + "<br><br>";
                    body += "<b>Attempting to Create Lead</b><br>" + firstName + " " + lastName + "<br><br>";
                    body += "<b>Page</b><br>register.aspx<br><br>";
                    body += "<b>Inner Exception</b><br>" + ex.InnerException + "<br><br>";
                    body += "<b>Stack Trace</b><br>" + ex.StackTrace + "<br><br>";
                    body += "<b>TimeStamp</b><br>" + DateTime.Now.ToString() + "<br><br>";
                    objSendEmail.Body = body;
                    SendMail.Send(objSendEmail, true);
                }
            }
            nextStep.Visible = false;
            string url;
            // if the config setting allows it, go secure for the rest of the user's visit.
            if (ConfigurationManager.AppSettings["GoSecure"] == "true")
            {
                url = String.Format("https://{0}{1}",
                                           Request.ServerVariables["HTTP_HOST"],
                                           ResolveUrl("~/confirm.aspx?registrationid=" + registrationId));
                //Response.Redirect(url);
            }
                // otherwise stay non-secure
            else
            {
                url = "confirm.aspx?registrationid=" + registrationId;
            }
            var redirect = "window.location.href='" + url + "'";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), redirect, true);

        }

    }
}
