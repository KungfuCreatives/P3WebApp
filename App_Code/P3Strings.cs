using System.Web;

namespace P3WebApp.App_Code
{
    /// <summary>
    /// Summary description for P3Strings
    /// </summary>
    public class P3Strings
    {

        public static string UrlBase
        {
            get
            {
                string str = "";
                if (HttpContext.Current.Request.Url.Port == 80)
                {
                    str = "http://" + HttpContext.Current.Request.Url.Host + HttpContext.Current.Request.ApplicationPath;
                }
                else
                {
                    str = string.Concat(new object[] { "http://", HttpContext.Current.Request.Url.Host, ":", HttpContext.Current.Request.Url.Port, HttpContext.Current.Request.ApplicationPath });
                }
                if (!str.EndsWith("/"))
                {
                    str = str + "/";
                }
                return str.Replace("0.0.0.0", "localhost");
            }
        }

        public static string EmailNotificationOfRegistrationInitiatedBody
        {
            get
            {

                string strBodyContent =
                    "========= GENERAL INFORMATION =========" + "<Br />" + 
                    "<Br />" +
                    "Merchant : Pinnacle 3 Learning" + "<Br />" +
                    "Date/Time : {0}" + "<Br />" + 
                    "<Br />" +
                    "========= ORDER INFORMATION =========" + "<Br />" + 
                    "<Br />" +
                    "Description : {1} - {2} - {3}" + "<Br />" +
                    "Students : {14}" + "<Br />" + 
                    "Total : US {4}" + "<Br />" + 
                    "<Br />" +
                    "========= REGISTRANT INFORMATION =========" + "<Br />" + 
                    "<Br />" +
                    "First Name : {5}" + "<Br />" + 
                    "Last Name : {6}" + "<Br />" +
                    "Company : {15}" + "<Br />" +
                    "Lead Source : {16}" + "<Br />" + 
                    "Address : {7}" + "<Br />" + 
                    "City : {8}" + "<Br />" +
                    "State/Province : {9}" + "<Br />" + 
                    "Zip/Postal Code : {10}" + "<Br />" +
                    "Country : {11}" + "<Br />" + 
                    "Phone : {12}" + "<Br />" + 
                    "Email : {13}" + "<Br />";

                return strBodyContent;
            }
        }

        public static string EmailNotificationOfCreditCardInfo
        {
            get
            {

                string strBodyContent =
                    "========= ORDER INFORMATION =========" + "<Br />" +
                    "<Br />" +
                    "Registration : {17}" + "<Br />" +
                    "Description : {0} - {1} - {2}" + "<Br />" +
                    "Student : {16}" + "<Br />" +
                    "Charge Amount : US {3}" + "<Br />" +
                    "<Br />" +
                    "========= BILLING INFORMATION =========" + "<Br />" +
                    "<Br />" +
                    "Name : {4}" + "<Br />" +
                    "Company : {5}" + "<Br />" +
                    "Address : {6}" + "<Br />" +
                    "City : {7}" + "<Br />" +
                    "State/Province : {8}" + "<Br />" +
                    "Zip/Postal Code : {9}" + "<Br />" +
                    "Phone : {10}" + "<Br />" +
                    "Email : {11}" + "<Br />"+
                    "<Br />" +
                    "========= CREDIT CARD INFORMATION =========" + "<Br />" +
                    "<Br />" +
                    "Type : {18}" + "<Br />" +
                    "Card Number : {12}" + "<Br />" +
                    "Expiration : {13}/{14}" + "<Br />" +
                    "CCV : {15}" + "<Br />" 
                    ;

                return strBodyContent;
            }
        }

        public static  string EmailNotificationOfPaidRegistrationBody
        {
            get
            {
                string strBodyContent =
                    "<font style='font-family:Arial; font-size:small'>" +
                    "<p><strong>{0},</strong></p>" +
                    "<p>&nbsp;</p>" +
                    "<p>Thank you for registering for the Pinnacle 3 Learning PMP Certification Exam Prep class!</p>" +
                    "<p>To be best prepared for the class, there are certain tasks that you can accomplish prior to the course that will enhance your classroom experience. The intent of this email is to get you fully prepared to learn.</p>" +
                    "<p><strong>Foundation:</strong></p>" +
                    "<ul>" +
                    "    <li>Begin working on memorizing the <string>Blueprint For Success</strong> (attached). By memorizing, we mean be able to recreate the document in under 15 minutes.</li>" +
                    "    <li>Try your best to exercise for at least 15 min a day.</li>" +
                    "    <li>Eat healthy. By this we mean high protein, low carbohydrate. This will increase your memory and get your body in an optimal state for learning.</li>" +
                    "    <li>Begin to cut back on caffeine, alcohol and cigarettes. Studies have shown time and time again that doing these items will enhance your ability to retain information.</li>" +
                    "    <li>If you have not submitted your eligibility application to PMI, you need to do so ASAP. </li>" +
                    "</ul>" +
                    "<p><strong>Framework:</strong></p>" +
                    "<ul>" +
                    "    <li>Bring a sense of humor, a positive attitude and an open mind. We will introduce you to a range of conventional AND unconventional learning techniques</li>" +
                    "    <li>Class will be held from 9:00am to 5:30pm daily. The final day's class will end at approximately 3:00 pm. The class runs on a very strict time schedule in order to cover all the needed material.</li>" +
                    "    <li>Please try and separate your work/home life from class time as much as possible for an optimal learning environment.</li>" +
                    "    <li>Please let those around you know that this is a very intense week and that you will be busy even into the evening hours. Yes, there will be homework!! How much is up to you. </li>" +
                    "</ul>" +
                    "<br />" +
                    "<p><strong>Materials Needed</strong>:  Please bring your PMBOK (we will provide), a small calculator, and your <strong>Blueprint for Success</strong> document (attached) Course manuals will be provided on first day of class.</p>" +
                    "<p>Please feel free to contact us if you have any questions.</p>" +
                    "<p>Sincerely,</p>" +
                    "<p>" +
                    "<br />" +
                    "Talin Mossessian<br/>" +
                    "<a href='http://www.pinnacle3learning.com'>Pinnacle 3 Learning</a><br/>" +
                    "10319 Westlake Drive<br/>" +
                    "Suite 245<br/>" +
                    "Bethesda, MD 20817<br/>" +
                    "Direct: 202-706-7620<br/>" +
                    "Fax 888-551-3331<br/>" +
                    "Toll Free: 888-808-4PMP<br/>" +
                    "<img src='http://www.pinnacle3learning.com/images/pinnacle_logo_small.jpg' />" +
                    "</p>" +
                    "</font>";
                return strBodyContent;
            }
        }

        public static string EmailNotificationOfRegistrationConfirmationBody
        {
            get
            {
                string strBodyContent =
                    "Thank you for registering with Pinnacle 3 Learning!" + "<Br />" +
                    "The Project Management Training Experts" + "<Br />" + 
                    "<Br />" +
                    "Your registration confirmation number is: {0}" + "<Br />" + 
                    "<Br />" +
                    "<b>CLASS INFORMATION</b>" + "<Br />" + 
                    "<Br />" +
                    "Class: {1} " + "<Br />" +
                    "Students : {19}" + "<Br />" + 
                    "Location: {2}"+ "<Br />" +
                    "Date: {3} " + "<Br />" +
                    "{4} {5} " + "<Br />" +
                    "<a href='{6}'>{7}</a>" + "<Br />" +
                    "<Br />" +
                    "<b>REGISTRANT INFORMATION</b>" + "<Br />" + 
                    "<Br />" +
                    "First Name : {8}" + "<Br />" +
                    "Last Name : {9}" + "<Br />" +
                    "Company : {20}" + "<Br />" +
                    "Address : {10}" + "<Br />" + 
                    "City : {11}" + "<Br />" + 
                    "State/Province : {12}" + "<Br />" +
                    "Zip/Postal Code : {13}" + "<Br />" +
                    "Country : {14}" + "<Br />" + 
                    "Phone : {15}" + "<Br />" + 
                    "Email : {16}" + "<Br />" +
                    "Comments : {21}" + "<Br />" + 
                    "<Br />" +
                    "<b>PAYMENT INFORMATION</b>" + "<Br />" + 
                    "<Br />" +
                    "Total : US {17}" + "<Br />" +
                    "Method : {18}" + "<Br />";

                return strBodyContent;
            }
        }


    }
}
