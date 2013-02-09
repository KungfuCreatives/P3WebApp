using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using USAePayAPI;
using GCheckout.Checkout;
using GCheckout.Util;
using PinnacLearningCenter;

public partial class checkout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int amountToCharge = Convert.ToInt32(Session["amountToCharge"]);
        lblPrice.Text = amountToCharge.ToString("C");
        lblClassLocation.Text = Convert.ToString(Session["classLocation"]);
        lblClassDate.Text = Convert.ToDateTime(Session["classDate"]).ToString("dd-MMMM-yyyy");
    }

    private void showResult(USAePayAPI.USAePay usaepay)
    {
        MultiView1.ActiveViewIndex = 1;
        if (usaepay.ResultCode == "A")
        {
            lblStatus.Text = "Transaction approved\n" +
                "Auth Code: " + usaepay.AuthCode + "\n" +
                "Ref Num: " + usaepay.ResultRefNum + "\n" +
                "AVS: " + usaepay.AvsResult + "\n" +
                "CVV: " + usaepay.Cvv2Result;
        }
        else if (usaepay.ResultCode == "D")
        {
            lblStatus.Text = "Transaction Declined\n" +
                "Ref Num: " + usaepay.ResultRefNum;
        }
        else
        {
            lblStatus.Text = "Transaction Error<br/>" +
                "Ref Num: " + usaepay.ResultRefNum + "<br/>" +
                "Error: " + usaepay.ErrorMesg + "<br/>" +
                "Error Code: " + usaepay.ErrorCode;
        }
        MultiView1.ActiveViewIndex = 1;
    }

    //protected void payForClass_Click(object sender, EventArgs e)
    //{
    //    USAePayAPI.USAePay usaepay = new USAePayAPI.USAePay();
    //    usaepay.SourceKey = "5Vys96y148t4Iki3EP8bBxd45tZQ486H";
    //    usaepay.Pin = "PIN3PMP";
    //    usaepay.Amount = Convert.ToDecimal(Session["amountToCharge"]);
    //    usaepay.Description = "Class Registration";
    //    usaepay.CardHolder = billTo_firstName.Text + " " + billTo_lastName.Text;
    //    usaepay.CardNumber = card_accountNumber.Text;
    //    usaepay.CardExp = ccMonth.SelectedValue + "" + ccYear.SelectedValue;
    //    usaepay.Cvv2 = ccCVN.Text; 

    //        try 
    //        {
    //            usaepay.Sale();
    //            this.showResult(usaepay);
    //        }
    //        catch(Exception x) 
    //        {
    //            lblStatus.Text="ERROR: " + x.Message;
    //        }
    //}

    protected void payForClass_Click(object sender, EventArgs e)
    {

    }

    //protected void PostCartToGoogle(object sender, System.Web.UI.ImageClickEventArgs e)
    //{
    //    CheckoutShoppingCartRequest Req = GCheckoutButton1.CreateRequest();
    //    int qty = Convert.ToInt32(Session["studentNum"]);
    //    int amountToCharge = Convert.ToInt32(Session["amountToCharge"]);
    //    Req.AddItem("Project Management Class", Convert.ToString(Session["classLocation"]) + " at Date " + Convert.ToString(Session["classDate"]), amountToCharge / qty, qty);
    //    Req.EditCartUrl = clsGeneral.UrlBase + "register.aspx";

    //    GCheckoutResponse Resp = Req.Send();
    //    if (Resp.IsGood)
    //    {
    //        ///send Email Notification
    //        SendMail objSendEmail = new SendMail();
    //        ///send notification in email
    //        objSendEmail.From = billTo_email.Text.Trim();
    //        objSendEmail.ToEmail = "registration@pinnacle3.com";
    //        objSendEmail.Subject = "Registration Done By " + billTo_firstName.Text.Trim() + " " + billTo_lastName.Text.Trim();
    //        objSendEmail.Body = string.Format(clsGeneral.EmailNotificationBody, DateTime.Now.ToString(), "NA", Convert.ToString(Session["classLocation"]), Convert.ToString(Session["classDate"])
    //            , amountToCharge, "Discover", billTo_firstName.Text.Trim(), billTo_lastName.Text.Trim(), "", billTo_street1.Text.Trim(),
    //            billTo_city.Text.Trim(), billTo_state.Text.Trim(), billTo_postalCode.Text.Trim(), billTo_country.Text.Trim(),
    //            billTo_phoneNumber.Text.Trim(), "", billTo_email.Text.Trim());

    //        SendMail.Send(objSendEmail);
    //        Response.Redirect(Resp.RedirectUrl, true);
    //    }
    //    else
    //    {
    //        Response.Write("Resp.ResponseXml = " + Resp.ResponseXml + "<br>");
    //        Response.Write("Resp.RedirectUrl = " + Resp.RedirectUrl + "<br>");
    //        Response.Write("Resp.IsGood = " + Resp.IsGood + "<br>");
    //        Response.Write("Resp.ErrorMessage = " + Resp.ErrorMessage + "<br>");
    //    }
    //}

    protected void btnEnroll_Click(object sender, EventArgs e)
    {
        int qty = Convert.ToInt32(Session["studentNum"]);
        int amountToCharge = Convert.ToInt32(Session["amountToCharge"]);


        ///send Email Notification
        SendMail objSendEmail = new SendMail();
        ///send notification in email
        objSendEmail.IsHTML = true;
        objSendEmail.ToEmail = "registration@pinnacle3.com";
        objSendEmail.Subject = "Registration Done By " + billTo_firstName.Text.Trim() + " " + billTo_lastName.Text.Trim();
        objSendEmail.Body = string.Format(clsGeneral.EmailNotificationBody, DateTime.Now.ToString(), "NA", Convert.ToString(Session["classLocation"]), Convert.ToString(Session["classDate"])
            , amountToCharge, drpPaymentMethod.SelectedValue, billTo_firstName.Text.Trim(), billTo_lastName.Text.Trim(), "", billTo_street1.Text.Trim(),
            billTo_city.Text.Trim(), billTo_state.Text.Trim(), billTo_postalCode.Text.Trim(), billTo_country.Text.Trim(),
            billTo_phoneNumber.Text.Trim(), "", billTo_email.Text.Trim());

        SendMail.Send(objSendEmail);
        Response.Redirect("Thanks.aspx", true);

    }
}
