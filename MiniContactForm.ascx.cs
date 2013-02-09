using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using P3WebApp.App_Code;
using System.Text.RegularExpressions;

namespace P3WebApp
{
    public partial class MiniContactForm : System.Web.UI.UserControl
    {
        private const string THANKSMESSAGE = "Thanks for contacting us! We will answer your question ASAP.";
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = THANKSMESSAGE;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (isValid())
            {
                pnlForm.Visible = false;
                pnlMessage.Visible = true;
                lbAnother.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Black;
                SendMessage();
            }
            else
            {
                pnlForm.Visible = true;
                pnlMessage.Visible = true;
                lbAnother.Visible = false;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please fill in Name and valid Email address before sending";
            }
        }

        private void SendMessage()
        {
            var objSendEmail = new SendMail();
            objSendEmail.IsHTML = true;
            objSendEmail.Subject = "Quick Question from pinnacle3learning.com";
            string body = "<b>Name</b><br>" + txtName.Text.Trim() + "<br>";
            body += "<b>Email</b><br>" + txtEmail.Text.Trim() +"<br>";
            body += "<b>Question/Message</b><br>" + txtQuestions.Text + "<br>";
            objSendEmail.Body = body;
            SendMail.Send(objSendEmail, true);
        }

        protected void lbAnother_Click(object sender, EventArgs e)
        {
            pnlForm.Visible = true;
            pnlMessage.Visible = false;
        }

        public bool ValidEmail(string email)
        {
            string pattern = @"^(?!\.)(""([^""\r\\]|\\[""\r\\])*""|"
              + @"([-a-z0-9!#$%&'*+/=?^_`{|}~]|(?<!\.)\.)*)(?<!\.)"
              + @"@[a-z0-9][\w\.-]*[a-z0-9]\.[a-z][a-z\.]*[a-z]$";

            Regex regex = new Regex(pattern, RegexOptions.IgnoreCase);
            return regex.IsMatch(email);
        }

        private bool isValid()
        {
            return txtEmail.Text.Trim().Length > 0 && txtName.Text.Trim().Length > 0 && ValidEmail(txtEmail.Text);
        }
    }
}