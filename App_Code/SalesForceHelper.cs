using System;
using System.Diagnostics;
using System.Configuration;
using System.Web.Services.Protocols;
using P3WebApp.sforce;

namespace P3WebApp.App_Code
{
    public class SalesForceHelper
    {
        private SforceService binding;

        public SforceService Binding
        {
            get
            {
                if (IsLoggedIn())
                    return binding;

                if (Login())
                    return binding;
                throw new Exception("Unable to log in to Salesforce");
            }
        }

        public bool IsLoggedIn()
        {
            if (binding == null)
                return false;
            return binding.SessionHeaderValue != null;
        }

        public bool Login()
        {
            string username = ConfigurationManager.AppSettings["SForce_Username"];
            string password = ConfigurationManager.AppSettings["SForce_Password"];
            // Create a service object  
            binding = new SforceService();
            // Timeout after a minute  
            binding.Timeout = 60000;
            // Try logging in  
            LoginResult lr;
            try
            {
                Debug.WriteLine("LOGGING IN NOW...");
                lr = binding.login(username, password);
            }
            // ApiFault is a proxy stub generated from the WSDL contract when  
            // the web service was imported  
            catch (SoapException e)
            {
                // Write the fault code to the console  
                Debug.WriteLine(e.Code);
                // Write the fault message to the console  
                Debug.WriteLine("An unexpected error has occurred: " + e.Message);
                // Write the stack trace to the console  
                Debug.WriteLine(e.StackTrace);
                // Return False to indicate that the login was not successful  
                return false;
            }
            // Check if the password has expired  
            if (lr.passwordExpired)
            {
                throw new Exception("An error has occurred. Your salesforce password has expired. Unable to log in.");
            }
            /** Once the client application has logged in successfully, it will use
             * the results of the login call to reset the endpoint of the service
             * to the virtual server instance that is servicing your organization
             */
            binding.Url = lr.serverUrl;
            /** This client application now has an instance of the SforceService
             * that is pointing to the correct endpoint. Next, this client
             * application sets a persistent SOAP header (to be included on all
             * subsequent calls that are made with SforceService) that contains the
             * valid sessionId for our login credentials. To do this, the sample
             * client application creates a new SessionHeader object and persist it to
             * the SforceService. Add the session ID returned from the login to the
             * session header
             */
            binding.SessionHeaderValue = new SessionHeader();
            binding.SessionHeaderValue.sessionId = lr.sessionId;
            // Return true to indicate that we are logged in, pointed  
            // at the right URL and have our security token in place.  

            return true;
        }

        public string ConvertLeadToOpportunity(string leadId, string accountId, string opportunityName)
        {
            var leadConvert = new LeadConvert();
            leadConvert.leadId = leadId;
            if (!string.IsNullOrEmpty(accountId))
                leadConvert.accountId = accountId;
            leadConvert.opportunityName = opportunityName;
            leadConvert.convertedStatus = "Qualified";
            leadConvert.sendNotificationEmail = false;

            string returnString = "";

            var lcr = binding.convertLead(new[] {leadConvert});
            foreach (var t in lcr)
                if (t.success)
                {
                    Debug.WriteLine("Conversion succeeded.\n");
                    Debug.WriteLine("The new opportunity id is: " + t.opportunityId);
                    returnString += t.opportunityId + " ";
                }
                else
                {
                    throw new Exception("The conversion failed because: " + t.errors[0].message);
                }

            return returnString.Trim();
        }
    }

  
}