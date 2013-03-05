using System;
using System.Configuration;
using System.Data.OleDb;
using System.Web.UI;
using P3WebApp.App_Code;
using P3WebApp.sforce;

namespace P3WebApp
{
    public partial class confirmed : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlSiteSeal.Visible = Request.Url.Scheme == "https" || !bool.Parse(ConfigurationManager.AppSettings["GoSecure"]);

            if (!IsPostBack)
            {
                if (Request.QueryString["registrationid"] == null)
                    throw new Exception("Registration ID was discovered to be null when initiating the confiremd page.");
                
                string registrationid = Request.QueryString["registrationid"];
                string classId = string.Empty;
                string locationDesc = string.Empty;
                string locationSeo = string.Empty;
                string hotel = string.Empty;
                string hotelWebsite = string.Empty;
                string description = string.Empty;
                string classTypeDesc = string.Empty;
                string classDays = string.Empty;
                bool hot = false;
                DateTime classDateTime = DateTime.MaxValue;
                int amountToCharge = 0;
                string firstName = string.Empty;
                string lastName = string.Empty;
                string city = string.Empty;
                string country = string.Empty;
                string address = string.Empty;
                string state = string.Empty;
                string zip = string.Empty;
                string phone = string.Empty;
                string email = string.Empty;
                string numstudents = string.Empty;
                string comments = string.Empty;
                string couponcode = string.Empty;
                string paymenttype = string.Empty;
                string company = string.Empty;

                OleDbConnection conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["classDBF"].ConnectionString);
                OleDbCommand cmd = new OleDbCommand("SELECT classes.ClassID, classes.HOT, (Format(classes.ClassDate,'mm/dd/yyyy')) AS ClassDate, classes.numdays, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.Hotel, Hotels.HotelWebsite, Locations.LocationSeo, Locations.LocationDesc, registration.RegistrationId, registration.amounttocharge, registration.firstname, registration.lastname, registration.company, registration.address, registration.city, registration.state, registration.zipcode, registration.country, registration.phone, registration.email, registration.numstudents, registration.couponcode, registration.comments, registration.paymenttype FROM (Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID = classes.ClassDaysID) ON Hotels.HotelID = classes.HotelID) ON ClassType.classTypeID = classes.ClassTypeID) ON Locations.LocationID = classes.LocationID) INNER JOIN registration ON classes.ClassID = registration.classId WHERE registration.RegistrationId=" + registrationid, conn);

                conn.Open();
                OleDbDataReader myReader = cmd.ExecuteReader();

                while (myReader.Read())
                {
                    classId = myReader["ClassID"].ToString();
                    locationDesc = myReader["LocationDesc"].ToString();
                    locationSeo = myReader["LocationSeo"].ToString();
                    hotel = myReader["Hotel"].ToString();
                    hotelWebsite = myReader["HotelWebsite"].ToString();
                    description = myReader["Description"].ToString();
                    hot = myReader["HOT"].ToString() == "images/discount_img.gif";
                    classDateTime = DateTime.Parse(myReader["ClassDate"].ToString());
                    classTypeDesc = myReader["classTypeDesc"].ToString();
                    amountToCharge = int.Parse(myReader["amounttocharge"].ToString());
                    firstName = myReader["firstName"].ToString();
                    lastName = myReader["lastName"].ToString();
                    city = myReader["city"].ToString();
                    country = myReader["country"].ToString();
                    address = myReader["address"].ToString();
                    state = myReader["state"].ToString();
                    zip = myReader["zipcode"].ToString();
                    phone = myReader["phone"].ToString();
                    email = myReader["email"].ToString();
                    numstudents = myReader["numstudents"].ToString();
                    comments = myReader["comments"].ToString();
                    couponcode = myReader["couponcode"].ToString();
                    paymenttype = myReader["paymenttype"].ToString();
                    company = myReader["company"].ToString();
                    break;
                }
                myReader.Close();
                conn.Close();

                lblRegistration.Text = registrationid.ToString();
                lblClassDate.Text = classDateTime.ToShortDateString();
                lblClassLocation.Text = locationDesc;
                lblPrice.Text = string.Format("{0:C}", amountToCharge);
                lblClassDays.Text = description;
                lblHotel.Text = hotel;
                billTo_city.Text = city;
                billto_comments.Text = comments;
                billTo_country.Text = country;
                billTo_email.Text = email;
                billTo_firstName.Text = firstName;
                billTo_lastName.Text = lastName;
                billTo_phoneNumber.Text = phone;
                billTo_postalCode.Text = zip;
                billTo_state.Text = state;
                billTo_street1.Text = address;
                lblPayment.Text = paymenttype;
                lblCompany.Text = company;

                var locationLink = string.Empty;

                switch (classTypeDesc)
                {
                    case "PMP":
                        lblClass.Text = "Project Management Professional (PMP®) Prep";
                        locationLink = "pmp-certification-" + locationSeo;
                        break;
                    case "Essentials":
                        lblClass.Text = "PM Essentials"; 
                        break;
                    case "Risk":
                        lblClass.Text = "Managing Project Risk"; 
                        break;
                    case "MS Project":
                        lblClass.Text = "Microsoft Project 2007 Training"; 
                        break;
                    case "CAPM":
                        lblClass.Text = "Certified Associate in Project Management";
                        locationLink = locationSeo + "-capm-training-class";
                        break;
                    case "L6BI":
                        lblClass.Text = "Lean Six Sigma Black Belt Program";
                        locationLink = locationSeo + "-lean-six-sigma-green-belt-training-class";
                        break;
                    case "L6GI":
                        lblClass.Text = "Lean Six Sigma Green Belt Program";
                        locationLink = locationSeo + "-lean-six-sigma-green-belt-training-class";
                        break;
                }
                hotelInfoLink.NavigateUrl = locationLink;

                if (ConfigurationManager.AppSettings["SendLeadsToSalesForce"] == "true")
                {
                    string days;
                    if (classDays.Contains("Sat"))
                    {
                        days = "WKND";
                    }
                    else
                    {
                        days = "WKDY";
                    }
                    string optyname = locationDesc.ToUpper().Replace(".", "").Replace(" ", "").Substring(0, 3) + " " +
                                      classTypeDesc.ToUpper().Replace(" ", "").Substring(0, 3) + " " + days + " - " + lastName + "." + firstName.Substring(0, 1);
                    _doSalesForceWork(optyname, company, amountToCharge, locationDesc, classDateTime);
                }

                SendMail objSendEmail = new SendMail();
                ///send notification in email
                objSendEmail.IsHTML = true;
                objSendEmail.ToEmail = email;
                objSendEmail.Subject = "Pinnacle 3 Learning Registration Confirmation";
                objSendEmail.Body = string.Format(P3Strings.EmailNotificationOfRegistrationConfirmationBody,
                                                  registrationid,
                                                  lblClass.Text,
                                                  locationDesc,
                                                  classDateTime.ToShortDateString(), 
                                                  description, "8:30am - 6:00pm",
                                                  "http://" + Request.ServerVariables["HTTP_HOST"] + "/" + locationLink,
                                                  hotel,
                                                  firstName,
                                                  lastName,
                                                  address,
                                                  city,
                                                  state,
                                                  zip,
                                                  country,
                                                  phone,
                                                  email,
                                                  lblPrice.Text,
                                                  paymenttype,
                                                  numstudents,
                                                  company,
                                                  comments);

                try
                {
                    SendMail.Send(objSendEmail);
                }
                catch
                {
                    lblEmail.Text = "We were unable to send the automatic confirmation email. We'll send it to you manually as soon as possible.";
                }
            }
        }
        private void _doSalesForceWork(string opportunityName, string companyName, int amountToCharge, string targetLocation, DateTime targetDate)
        {
            try
            {
                if (Session["LeadId"] == null || string.IsNullOrEmpty(Session["LeadId"].ToString()))
                    return;
                // Retrieve the Lead record;
                string leadId = Session["LeadId"].ToString();
                string accountId = "";
                SalesForceHelper sf = new SalesForceHelper();

                QueryResult qr = null;

                sf.Binding.QueryOptionsValue = new QueryOptions();
                sf.Binding.QueryOptionsValue.batchSize = 250;
                sf.Binding.QueryOptionsValue.batchSizeSpecified = true;

                qr = sf.Binding.query("select Id, Name from Account where name = '" + companyName + "'");
                if (qr != null && qr.records != null)
                    foreach (sObject t in qr.records)
                    {
                        Account a = (Account) t;
                        accountId = a.Id;
                        break;
                    }

                string optyId = sf.ConvertLeadToOpportunity(leadId, accountId, opportunityName);
                sObject[] records = sf.Binding.retrieve("Id, Name, StageName", "Opportunity", new[] {optyId});

                if (records.Length == 1)
                {
                    Opportunity opty = (Opportunity) records[0];
                    opty.StageName = "Proposal/Price Quote";
                    opty.Description = "Web Site Registration Confirmed & Unpaid - " + lblClassLocation.Text + " " +
                                       lblClass.Text + " " + lblClassDate.Text + " " + lblClassDays.Text + " Comments: " +
                                       billto_comments.Text;
                    opty.Amount = amountToCharge;
                    opty.AmountSpecified = true;
                    opty.Target_Date__c = targetDate;
                    opty.Target_Date__cSpecified = true;
                    opty.Target_Location__c = targetLocation; 
                    sf.Binding.update(new[] {opty});
                }

                sf.Binding.logout();
            }
            catch (Exception ex)
            {
                SendMail objSendEmail = new SendMail();
                objSendEmail.IsHTML = true;
                objSendEmail.Subject = "Error on pinnacle3learning.com - SalesForce Integration ";
                string body = "<b>Message</b><br>" + ex.Message + "<br><br>";
                body += "<b>Attempting to Convert Lead</b><br>" + opportunityName + "<br><br>";
                body += "<b>Page</b><br>confirmed-paid.aspx<br><br>";
                body += "<b>Inner Exception</b><br>" + ex.InnerException + "<br><br>";
                body += "<b>Stack Trace</b><br>" + ex.StackTrace + "<br><br>";
                body += "<b>TimeStamp</b><br>" + DateTime.Now.ToString() + "<br><br>";
                objSendEmail.Body = body;
                SendMail.Send(objSendEmail, true);
            }
        }
    }
}
