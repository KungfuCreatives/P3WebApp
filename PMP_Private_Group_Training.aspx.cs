using System;
using System.Configuration;
using P3WebApp;
using P3WebApp.App_Code;
using P3WebApp.ClassLibrary;

public partial class PMP_Private_Group_Training : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (findUs.SelectedValue != "0")
        {
            var objSendEmail = new SendMail();
            objSendEmail.IsHTML = true;
            objSendEmail.Subject = "An Inquiry From Your Website for Private Group Training";
            objSendEmail.Body = "<br>Name: " + fname.Text + " " + lname.Text;
            objSendEmail.Body += "<br>Email: " + email.Text;
            objSendEmail.Body += "<br>Heard From: " + findUs.SelectedItem.Text + " " + sourceOther.Text;
            objSendEmail.Body += "<br>Source IP Address: " + Request.UserHostAddress;
            objSendEmail.Body += "<br>Company: " + company.Text;
            objSendEmail.Body += "<br>Daytime Phone: " + dayPhone.Text;
            objSendEmail.Body += "<br>Approx Attendee Count: " + ddlAttendeeCount.SelectedValue;
            objSendEmail.Body += "<br>Preferred Course: " + ddlCourse.SelectedValue;
            objSendEmail.Body += "<br>Preferred Location: " + ddlLocation.SelectedValue;
            objSendEmail.Body += "<br>Comments: " + comments.Text;

            SendMail.Send(objSendEmail);
            if (ConfigurationManager.AppSettings["SendLeadsToSalesForce"] == "true")
                _postFormToSalesForce();
            Response.Redirect("private-group-sent.aspx");
        }
        else
        {
            Label2.Visible = true;
        }
    }
    private void _postFormToSalesForce()
    {
        var myPost = new WebPostRequest("https://www.salesforce.com/servlet/servlet.WebToLead?encoding=UTF-8");
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
        myPost.Add("description", "Web Site Private Group Inquiry - Preferred Location: " + ddlLocation.SelectedValue + ", Attendee Count: " + ddlAttendeeCount.SelectedValue + ", Preferred Course: " + ddlCourse.SelectedValue + ", Comments: " + comments.Text);
        myPost.GetResponse();
    }
}
