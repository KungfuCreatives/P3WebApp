using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using P3WebApp;
using P3WebApp.App_Code;
using P3WebApp.ClassLibrary;

public partial class Contact_Pinnacle_3_PMP_Certification_Training : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CaptchaErrorLabel.Text = "Incorrect CAPTCHA code";
            CaptchaErrorLabel.Visible = false;
        }
        (Master as SiteMaster).MiniContactForm.Visible = false;
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (findUs.SelectedValue != "0")
        {
            if (!validateForm())
                return;
            SendMail objSendEmail = new SendMail();
            //send notification in email
            objSendEmail.IsHTML = true;
            objSendEmail.Subject = "An Inquiry From Your Website";
            objSendEmail.Body = "<br>Name: " + fname.Text + " " + lname.Text;
            objSendEmail.Body += "<br>Email: " + email.Text;
            objSendEmail.Body += "<br>Heard From: " + findUs.SelectedItem.Text + " " + sourceOther.Text;
            objSendEmail.Body += "<br>Source IP Address: " + Request.UserHostAddress.ToString();
            objSendEmail.Body += "<br>Company: " + company.Text;
            objSendEmail.Body += "<br>Daytime Phone: " + dayPhone.Text;
            objSendEmail.Body += "<br>Comments: " + comments.Text;

            SendMail.Send(objSendEmail);
            if (ConfigurationManager.AppSettings["SendLeadsToSalesForce"] == "true")
                _postFormToSalesForce();
            Response.Redirect("contact-sent.aspx");
        }
        else
        {
            Label2.Visible = true;
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
    private void _postFormToSalesForce()
    {
        WebPostRequest myPost = new WebPostRequest("https://www.salesforce.com/servlet/servlet.WebToLead?encoding=UTF-8");
        myPost.Add("oid", "00DA0000000K4ZY");
        myPost.Add("first_name", fname.Text);
        myPost.Add("last_name", lname.Text);
        myPost.Add("company", company.Text);
        myPost.Add("email", email.Text);
        myPost.Add("phone", dayPhone.Text);
        if ((findUs.SelectedItem.Text + " " + sourceOther.Text).Length > 40)
        {
            myPost.Add("lead_source", (findUs.SelectedItem.Text + " " + sourceOther.Text).Substring(0, 40));
        }
        else
        {
            myPost.Add("lead_source", (findUs.SelectedItem.Text + " " + sourceOther.Text));
        }
        myPost.Add("description", "Web Site Contact Us Inquiry - Comments: " + comments.Text);
        myPost.GetResponse();
    }

}
