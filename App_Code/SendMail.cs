using System;
using System.Configuration;
using System.Net.Mail;

namespace P3WebApp.App_Code
{

    /// <summary>
    /// Summary description for SendMail
    /// </summary>
    public class SendMail
    {
        #region public property

        /// <summary>
        /// get or set From Email Address 
        /// </summary>
        private string from;
        public string From
        {
            get
            {
                return from;
            }
            set
            {
                from = value;
            }
        }

        /// <summary>
        /// get Or Set User Password
        /// </summary>
        private string password;
        public string Password
        {
            get
            {
                return password;
            }
            set
            {
                password = value;
            }
        }

        /// <summary>
        /// get Or Set SMTP server name
        /// </summary>
        private string smtpServer;
        public string SmtpServer
        {
            get
            {
                return smtpServer;
            }
            set
            {
                smtpServer = value;
            }
        }

        /// <summary>
        /// get or Set UserName
        /// </summary>
        private string userName;
        public string Username
        {
            get
            {
                return userName;
            }
            set
            {
                userName = value;
            }
        }

        /// <summary>
        /// get or set Body Is HTML
        /// </summary>
        private Boolean isHTML;
        public Boolean IsHTML
        {
            get
            {
                return isHTML;
            }
            set
            {
                isHTML = value;
            }
        }

        /// <summary>
        /// get Or Set To Email Address
        /// </summary>
        private string toEmail;
        public string ToEmail
        {
            get
            {
                return toEmail;
            }
            set
            {
                toEmail = value;
            }
        }

        /// <summary>
        /// get Or Set Subject
        /// </summary>
        private string subject;
        public string Subject
        {
            get
            {
                return subject;
            }
            set
            {
                subject = value;
            }
        }

        /// <summary>
        /// get Or set message Body 
        /// </summary>
        private string body;
        public string Body
        {
            get
            {
                return body;
            }
            set
            {
                body = value;
            }
        }
        
        public AttachmentCollection Attachments { get; set; }

        #endregion

        #region Methods

        public SendMail()
        {
            from = ConfigurationManager.AppSettings["fromEmail"];
            toEmail = string.Empty;
            subject = string.Empty;
            body = string.Empty;
        }

        public static void Send(SendMail sendMail)
        {
            Send(sendMail, false);
        }

        public static void Send(SendMail sendMail, bool isError)
        {
            if (ConfigurationManager.AppSettings["SendEmails"].ToLower() != "true")
                return;
            MailMessage message = new MailMessage();
            message.From = new MailAddress(sendMail.From, "Pinnacle 3 Learning");
            if (!string.IsNullOrEmpty(sendMail.toEmail))
                message.To.Add(new MailAddress(sendMail.toEmail));
            message.Subject = sendMail.subject;
            message.IsBodyHtml = sendMail.isHTML;
            if (!isError && ConfigurationManager.AppSettings["BccRegularEmailsToAddresses"] == "true")
            {
                if (!string.IsNullOrEmpty(ConfigurationManager.AppSettings["email1"]))
                {
                    var address = new MailAddress(ConfigurationManager.AppSettings["email1"]);
                    message.Bcc.Add(address);
                }
                if (!string.IsNullOrEmpty(ConfigurationManager.AppSettings["email2"]))
                {
                    var address = new MailAddress(ConfigurationManager.AppSettings["email2"]);
                    message.Bcc.Add(address);
                }
                if (!string.IsNullOrEmpty(ConfigurationManager.AppSettings["email3"]))
                {
                    var address = new MailAddress(ConfigurationManager.AppSettings["email3"]);
                    message.Bcc.Add(address);
                }
            }
            if (isError && ConfigurationManager.AppSettings["BccErrorEmailsToAddresses"] == "true")
            {
                if (!string.IsNullOrEmpty(ConfigurationManager.AppSettings["errorEmail1"]))
                {
                    var address = new MailAddress(ConfigurationManager.AppSettings["errorEmail1"]);
                    message.Bcc.Add(address);
                }
                if (!string.IsNullOrEmpty(ConfigurationManager.AppSettings["errorEmail2"]))
                {
                    var address = new MailAddress(ConfigurationManager.AppSettings["errorEmail2"]);
                    message.Bcc.Add(address);
                }
                if (!string.IsNullOrEmpty(ConfigurationManager.AppSettings["errorEmail3"]))
                {
                    var address = new MailAddress(ConfigurationManager.AppSettings["errorEmail3"]);
                    message.Bcc.Add(address);
                }
            }

            if (sendMail.Attachments!= null)
                foreach (Attachment a in sendMail.Attachments)
                {
                    message.Attachments.Add(a);
                }

            SmtpClient Client = new SmtpClient();

            message.Body = sendMail.body;

            try
            {
                // if there are attachments, clone the email without them so we don't clog the admin's inbox
                if (message.Attachments.Count > 0 && ConfigurationManager.AppSettings["IncludeAttachmentsInEmailsToAdmin"] == "false")
                {
                    MailMessage copy = new MailMessage();
                    copy.From = message.From;
                    copy.Subject = message.Subject;
                    copy.IsBodyHtml = message.IsBodyHtml;
                    copy.Body = message.Body;
                    foreach (MailAddress b in message.Bcc)
                    {
                        // add the admin email addresses to the To line of the copy
                        copy.To.Add(b);
                        // remove the admin email addresses from the Bcc line of the message
                        message.Bcc.Remove(b);
                    }
                    Client.Send(copy);
                }
                Client.Send(message);
            }
            catch (FormatException formatException)
            {
                throw new Exception("You must provide valid e-mail address." + formatException.Message);
            }
            catch (InvalidOperationException invalidException)
            {
                throw new Exception("Please Provide a Server Name. Error: " + invalidException.Message);
            }
            catch (SmtpFailedRecipientException failedrecipientException)
            {
                try
                {
                    Client.Send(message);
                }
                catch
                {
                    throw new Exception("Error: " + failedrecipientException.Message);
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error: " + ex.Message);
            }
        }

        #endregion

    }
}