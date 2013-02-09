using System;
using System.Net;
using System.ServiceModel;
using System.Web.Services.Protocols;
using System.Xml;

class Class1
{
    // Before using this example, replace the generic values with you own merchant ID and password.
    private const String MERCHANT_ID = "v9528213";
    private const String TRANSACTION_KEY = "W/BvcGGj/Yb1moeKCb15mXQ2k3tm4x28uh8OejVYupSpBvypWO4iKVFEoM2aANI1e9cEo0C6DkGmiVo/Xbnnljbxsz5wiiNS9emCkWM/UuaMixiOdc94pacce7WdA/A/zb29VwxMZtDgBJKKP+3pv9/gUOpw+m3nSbcp61K1IduJVvubT26lPKeC6OSsbPgW/GIPe2bjHby6Hw56NVi6lKkG/KlY7iIpUUSgzZoA0jV71wSjQLoOQaaJWj9dueeWNvGzPnCKI1L16YKRYz9S5oyLGI51z3ilpxx7tZ0D8D/Nvb1XDExm0OAEkoo/7em/3+BQ6nD6bedJtynrUrUh2w==";

    static void Main(string[] args)
    {
        RequestMessage request = new RequestMessage();

        request.merchantID = MERCHANT_ID;

        // Before using this example, replace the generic value with your
        // reference number for the current transaction.
        request.merchantReferenceCode = "test01";

        // To help us troubleshoot any problems that you may encounter,
        // please include the following information about your application.
        request.clientLibrary = ".NET WCF";
        request.clientLibraryVersion = Environment.Version.ToString();
        request.clientEnvironment =
            Environment.OSVersion.Platform +
            Environment.OSVersion.Version.ToString();

        // This section contains a sample transaction request for the authorization 
        // service with complete billing, payment card, and purchase (two items) information.
        request.ccAuthService = new CCAuthService();
        request.ccAuthService.run = "true";

        BillTo billTo = new BillTo();
        billTo.firstName = "John";
        billTo.lastName = "Doe";
        billTo.street1 = "1295 Charleston Road";
        billTo.city = "Mountain View";
        billTo.state = "CA";
        billTo.postalCode = "94043";
        billTo.country = "US";
        billTo.email = "null@cybersource.com";
        billTo.ipAddress = "10.7.111.111";
        request.billTo = billTo;

        Card card = new Card();
        card.accountNumber = "4111111111111111";
        card.expirationMonth = "12";
        card.expirationYear = "2020";
        request.card = card;

        PurchaseTotals purchaseTotals = new PurchaseTotals();
        purchaseTotals.currency = "USD";
        request.purchaseTotals = purchaseTotals;

        request.item = new Item[2];

        Item item = new Item();
        item.id = "0";
        item.unitPrice = "12.34";
        request.item[0] = item;

        item = new Item();
        item.id = "1";
        item.unitPrice = "56.78";
        request.item[1] = item;

        try
        {
            TransactionProcessorClient proc = new TransactionProcessorClient();

            proc.ChannelFactory.Credentials.UserName.UserName = request.merchantID;
            proc.ChannelFactory.Credentials.UserName.Password = TRANSACTION_KEY;

            ReplyMessage reply = proc.runTransaction(request);

            // To retrieve individual reply fields, follow these examples.
            Console.WriteLine("decision = " + reply.decision);
            Console.WriteLine("reasonCode = " + reply.reasonCode);
            Console.WriteLine("requestID = " + reply.requestID);
            Console.WriteLine("requestToken = " + reply.requestToken);
            Console.WriteLine("ccAuthReply.reasonCode = " + reply.ccAuthReply.reasonCode);
        }
        catch (TimeoutException e)
        {
            Console.WriteLine("TimeoutException: " + e.Message + "\n" + e.StackTrace);
        }
        catch (FaultException e)
        {
            Console.WriteLine("FaultException: " + e.Message + "\n" + e.StackTrace);
        }
        catch (CommunicationException e)
        {
            Console.WriteLine("CommunicationException: " + e.Message + "\n" + e.StackTrace);
        }
    }

}
