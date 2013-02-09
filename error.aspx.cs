using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using P3WebApp.App_Code;

public partial class error : System.Web.UI.Page
{
    public string ErrorMessage;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Exception objError = Server.GetLastError();
            objError = objError.GetBaseException();
            ErrorMessage = objError.Message;
            if (objError.Message.Contains("A potentially dangerous Request.Path value was detected from the client"))
                return;
            if (objError.Message.Contains("Invalid viewstate"))
                return;
            SendMail objSendEmail = new SendMail();
            objSendEmail.IsHTML = true;
            objSendEmail.Subject = "Error on pinnacle3learning.com";
            string body = "<b>Message</b><br>" + objError.Message + "<br><br>";
            body += "<b>Inner Exception</b><br>" + objError.InnerException + "<br><br>";
            body += "<b>Stack Trace</b><br>" + objError.StackTrace + "<br><br>";
            body += "<b>TimeStamp</b><br>" + DateTime.Now.ToString() + "<br><br>";
            objSendEmail.Body = body;
            SendMail.Send(objSendEmail, true);
        }
    }
}
