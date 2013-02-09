using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net.Mail;
using System.Net;

public partial class unsubscribe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        MailAddress mailFrom = new MailAddress("info@pinnacle3learning.com");
        MailAddress mailTo = new MailAddress("keith.brodie@pinnacle3.com");

        MailMessage emailMessage = new MailMessage(mailFrom, mailTo);

        emailMessage.Subject = "Unsubscribe";
        emailMessage.Body += "<br>Email: " + email.Text;

        emailMessage.IsBodyHtml = false;

        SmtpClient myMail = new SmtpClient();
        myMail.Host = "localhost";
        myMail.DeliveryMethod = SmtpDeliveryMethod.Network;

        //myMail.Port = 25;
        NetworkCredential SMTPUserInfo = new NetworkCredential("mailForm@pinnacle3learning.com", "!p3Learning", "pinnacle3learning.com");
        //myMail.UseDefaultCredentials = false;
        myMail.Credentials = SMTPUserInfo;

        myMail.Send(emailMessage);

        MultiView1.ActiveViewIndex = 1;
    }
}
