﻿using System;
using System.Configuration;
using System.Data.OleDb;
using System.Web.UI;
using System.Web.UI.WebControls;
using P3WebApp.App_Code;
using Samurai;
using System.Collections.Generic;
using System.Linq;

namespace P3WebApp
{
    public partial class confirm : Page
    {
        private bool _creditCard_Test50Cents;
        private bool _acceptCreditCards;
        private bool _creditCard_AuthorizationActive;
        private string classTypeDesc;
        public int AmountToCharge { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            _acceptCreditCards = bool.Parse(ConfigurationManager.AppSettings["AcceptCreditCards"]);
            _creditCard_Test50Cents = bool.Parse(ConfigurationManager.AppSettings["CreditCard_Test50Cents"]);
            _creditCard_AuthorizationActive = bool.Parse(ConfigurationManager.AppSettings["CreditCard_AuthorizationActive"]);

            pnlSiteSeal.Visible = Request.Url.Scheme == "https" || !bool.Parse(ConfigurationManager.AppSettings["GoSecure"]);

            if (!IsPostBack)
            {
                _initPage();

                if (Request.QueryString["registrationid"] == null)
                {
                    Response.Redirect("classschedule.aspx");
                }
                else
                {
                    string registrationid = Request.QueryString["registrationid"];
                    string classId = string.Empty;
                    string locationDesc = string.Empty;
                    string hotel = string.Empty;
                    string hotelWebsite = string.Empty;
                    string description = string.Empty;
                    classTypeDesc = string.Empty;
                    string classDays = string.Empty;
                    bool hot = false;
                    DateTime classDateTime = DateTime.MaxValue;
                    AmountToCharge = 0;
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
                    string company = string.Empty;
                    string leadsource = string.Empty;

                    OleDbConnection conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["classDBF"].ConnectionString);
                    OleDbCommand cmd = new OleDbCommand("SELECT classes.ClassID, classes.HOT, (Format(classes.ClassDate,'mm/dd/yyyy')) AS ClassDate, classes.numdays, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.Hotel, Hotels.HotelWebsite, Locations.LocationDesc, registration.RegistrationId, registration.amounttocharge, registration.firstname, registration.lastname, registration.company, registration.leadsource, registration.address, registration.city, registration.state, registration.zipcode, registration.country, registration.phone, registration.email, registration.numstudents, registration.couponcode, registration.comments FROM (Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID = classes.ClassDaysID) ON Hotels.HotelID = classes.HotelID) ON ClassType.classTypeID = classes.ClassTypeID) ON Locations.LocationID = classes.LocationID) INNER JOIN registration ON classes.ClassID = registration.classId WHERE registration.RegistrationId=" + registrationid, conn);

                    conn.Open();
                    OleDbDataReader myReader = cmd.ExecuteReader();

                    while (myReader.Read())
                    {
                        classId = myReader["ClassID"].ToString();
                        hypBack.NavigateUrl = "javascript: window.history.back()";
                        locationDesc = myReader["LocationDesc"].ToString();
                        hotel = myReader["Hotel"].ToString();
                        hotelWebsite = myReader["HotelWebsite"].ToString();
                        description = myReader["Description"].ToString();
                        hot = myReader["HOT"].ToString() == "images/discount_img.jpg";
                        classDateTime = DateTime.Parse(myReader["ClassDate"].ToString());
                        classTypeDesc = myReader["classTypeDesc"].ToString();
                        AmountToCharge = int.Parse(myReader["amounttocharge"].ToString());
                        ViewState["AmountToCharge"] = AmountToCharge;
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
                        company = myReader["company"].ToString();
                        leadsource = myReader["leadsource"].ToString();
                        break;
                    }
                    myReader.Close();
                    conn.Close();

                    lblClassDate.Text = classDateTime.ToShortDateString();
                    lblClassLocation.Text = locationDesc;
                    lblPrice.Text = string.Format("{0:C}", AmountToCharge);
                    lblClassDays.Text = description;
                    lblHotel.Text = hotel;
                    hotelInfoLink.NavigateUrl = hotelWebsite;
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
                    //lblNumStudents.Text = numstudents;
                    txtBillName.Text = firstName + " " + lastName;
                    lblCompany.Text = company;
                    txtBillAddress.Text = address;
                    txtBillCity.Text = city;
                    txtBillState.Text = state;
                    txtBillZip.Text = zip;
                    txtBillPhone.Text = phone;
                    txtBillEmail.Text = email;
                    txtBillCompany.Text = company;

                    switch (classTypeDesc)
                    {
                        case "PMP":
                            lblClass.Text = "Project Management Professional (PMP®) Prep";
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
                            break;
                        case "L6BI":
                            lblClass.Text = "Lean Six Sigma Black Belt Program";
                            break;
                        case "L6GI":
                            lblClass.Text = "Lean Six Sigma Green Belt Program";
                            break;
                    }

                    SendMail objSendEmail = new SendMail();
                    objSendEmail.IsHTML = true;
                    objSendEmail.Subject = "Registration " + Request.QueryString["registrationid"] + " Initiated By " + billTo_firstName.Text.Trim() + " " + billTo_lastName.Text.Trim();
                    objSendEmail.Body = string.Format(P3Strings.EmailNotificationOfRegistrationInitiatedBody,
                                                      DateTime.Now.ToString(),
                                                      lblClass.Text,
                                                      lblClassLocation.Text,
                                                      lblClassDate.Text,
                                                      lblPrice.Text,
                                                      billTo_firstName.Text.Trim(),
                                                      billTo_lastName.Text.Trim(),
                                                      billTo_street1.Text.Trim(),
                                                      billTo_city.Text.Trim(),
                                                      billTo_state.Text.Trim(),
                                                      billTo_postalCode.Text.Trim(),
                                                      billTo_country.Text.Trim(),
                                                      billTo_phoneNumber.Text.Trim(),
                                                      billTo_email.Text.Trim(),
                                                      string.Empty, 
                                                      company, 
                                                      leadsource);
                    try
                    {
                        SendMail.Send(objSendEmail);
                    }
                    catch(Exception ex)
                    {
                        Response.Write("Error sending registration email: " + ex.Message);
                    }
                }
            }
        }

        private void _initPage()
        {
            ddlExpyYear.Items.Clear();
            int endYr = DateTime.Now.Year + 8;
            for (int i = DateTime.Now.Year; i < endYr; i++)
            {
                ddlExpyYear.Items.Add(i.ToString().Replace("20", ""));
            }
            ddlPaymentType.Items.Clear();
            ddlPaymentType.Items.Add(new ListItem("[Please Select]", ""));
            if (_acceptCreditCards)
            {
                ddlPaymentType.Items.Add(new ListItem("Visa", "Visa"));
                ddlPaymentType.Items.Add(new ListItem("Mastercard", "Mastercard"));
                ddlPaymentType.Items.Add(new ListItem("American Express", "American Express"));
                ddlPaymentType.Items.Add(new ListItem("Discover", "Discover"));
            }
            ddlPaymentType.Items.Add(new ListItem("Check", "Check"));
            ddlPaymentType.Items.Add(new ListItem("Purchase Order", "Purchase Order"));
            ddlPaymentType.Items.Add(new ListItem("Contact Me Later", "Contact Me Later"));
        }

        protected void btnEnroll_Click(object sender, EventArgs e)
        {
            _recordEnrollment();
            Response.Redirect("confirmed.aspx?registrationid=" + Request.QueryString["registrationid"]);
        }

        private void _recordEnrollment()
        {
            OleDbConnection conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["classDBF"].ConnectionString);
            conn.Open();
            try
            {
                string insertSql = string.Format("update registration set paymenttype = '{0}' where registrationid = {1}", ddlPaymentType.SelectedValue, Request.QueryString["registrationid"]);

                OleDbCommand cmd = new OleDbCommand(insertSql, conn);
                cmd.ExecuteNonQuery();
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
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            _recordEnrollment();
            if (ViewState["AmountToCharge"] != null)
            {
                List<Message> messages = null;
                Transaction authorization = null;
                string authorizationReferenceId = "";
                decimal chargeAmount = decimal.Parse(ViewState["AmountToCharge"].ToString());
                if (_creditCard_Test50Cents)
                    chargeAmount = (decimal).50;

                // CC Processing Block
                if (_creditCard_AuthorizationActive)
                {
                    //PaymentMethodPayload payload = new PaymentMethodPayload()
                    //{
                    //    FirstName = txtFirstNameOnCard.Text.Trim(),
                    //    LastName = txtLastNameOnCard.Text.Trim(),
                    //    Address1 = txtBillAddress.Text,
                    //    City = txtBillCity.Text,
                    //    State = txtBillState.Text,
                    //    Zip = txtBillZip.Text,
                    //    CardNumber = txtCardnumber.Text.Trim(),
                    //    Cvv = txtCcv.Text.Trim(),
                    //    ExpiryMonth = int.Parse(ddlExpyMonth.SelectedValue),
                    //    ExpiryYear = int.Parse(ddlExpyYear.SelectedValue),
                    //    Custom = string.Format("{0} {1} {2} {4}", classTypeDesc, lblClassDate.Text, lblClassLocation.Text, billTo_email)
                    //};

                    // Temporarily keeping it on
                    sendCCEmail(chargeAmount);

                    // Use Samurai payment gateway to authorize the transaction
                    //var paymentMethodToken = PaymentMethod.TokenizePaymentMethod(payload);
                    //Processor processor = Processor.TheProcessor; 
                    //authorization = processor.Authorize(paymentMethodToken, chargeAmount);
                    //authorizationReferenceId = authorization.ReferenceId; // save this value, you can find the transaction with it later
                    //messages = authorization.ProcessorResponse.Messages;

                }
                else
                {
                    // We're not using the payment gateway so just send the credit card info in an email
                    sendCCEmail(chargeAmount);
                    // We're all good... continue.
                    btnPay.Visible = false;
                    lblMessage.Text = "APPROVAL PENDING - Generating Confirmation Letter. Please Wait";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    string redirect = "window.location.href='confirmed-paid.aspx?registrationid=" + Request.QueryString["registrationid"] + "&apprv=Pending'";
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), redirect, true);
                }

                if (true)//messages != null)
                {
                    //var processorTransactionMessages = messages.Where(m => m.Context == "processor.transaction");
                    //// check for success 
                    //if (processorTransactionMessages.FirstOrDefault(m => m.Key != "success") != null)
                    //{
                    //    // we're in a failure situation
                    //    // print out an error statement
                    //    lblMessage.Text = "This transaction has failed. Please verify your credit card information or choose to pay later.<br>The error message is: ";
                    //    foreach (var message in messages)
                    //        lblMessage.Text += string.Format("<br> {0} - {1}", message.Context, message.Description);
                    //    return;
                    //}
                    // We're all good... continue.
                    btnPay.Visible = false;
                    lblMessage.Text = "Generating Confirmation Letter. Please Wait";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    Response.Redirect("confirmed-paid.aspx?registrationid=" + Request.QueryString["registrationid"] + "&apprv=" + authorizationReferenceId);
                    //string redirect = "window.location.href='confirmed-paid.aspx?registrationid=" + Request.QueryString["registrationid"] + "&apprv=" + authorizationReferenceId + "'";
                    //ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), redirect, true);
                }
                else
                {
                    // something went wrong
                    throw new Exception("Unhandled exception while processing a credit card transaction for registrationid=" + Request.QueryString["registrationid"]);
                }
                
            }
        }

        private void sendCCEmail(decimal chargeAmount)
        {
            SendMail objSendEmail = new SendMail();
            objSendEmail.IsHTML = true;
            objSendEmail.Subject = "Credit Card Info for Registration " + Request.QueryString["registrationid"] + " Initiated By " + billTo_firstName.Text.Trim() + " " + billTo_lastName.Text.Trim();
            objSendEmail.Body = string.Format(P3Strings.EmailNotificationOfCreditCardInfo,
                                              lblClass.Text,
                                              lblClassLocation.Text,
                                              lblClassDate.Text,                              
                                              chargeAmount,
                                              txtBillName.Text, 
                                              txtBillCompany.Text,
                                              txtBillAddress.Text, 
                                              txtBillCity.Text, 
                                              txtBillState.Text,
                                              txtBillZip.Text, 
                                              txtBillPhone.Text, 
                                              txtBillEmail.Text, 
                                              txtCardnumber.Text.Trim(), 
                                              ddlExpyMonth.SelectedValue,
                                              ddlExpyYear.SelectedValue, 
                                              txtCcv.Text.Trim(),
                                              billTo_firstName.Text + " " + billTo_lastName.Text,
                                              Request.QueryString["registrationid"],
                                              ddlPaymentType.SelectedValue
                                              );
            try
            {
                SendMail.Send(objSendEmail);
            }
            catch
            {
                Response.Write("Error sending registration email");
            }
        }

        protected void ddlPaymentType_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (ddlPaymentType.SelectedValue)
            {
                case "Visa":
                case "Mastercard":
                case "American Express":
                case "Discover":
                    pnlPayLater.Visible = false;
                    pnlPayNow.Visible = true;
                    break;
                case "Check":
                case "Purchase Order":
                case "Contact Me Later":
                    pnlPayLater.Visible = true;
                    pnlPayNow.Visible = false;
                    break;
                default:
                    pnlPayLater.Visible = false;
                    pnlPayNow.Visible = false;
                    break;
            }
        }

    }
}
