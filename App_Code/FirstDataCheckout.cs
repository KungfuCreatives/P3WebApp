using System;
using System.Collections.Generic;
using System.Net;
using System.Linq;
using System.Web;
using System.Security.Cryptography.X509Certificates;

using P3WebApp.fdggwsapi;

namespace P3WebApp
{
    public static class FirstDataCheckout
    {
        public static string ChargeCreditCard(string cardNumber, string expMonth, string expYear, string cardCodeValue, decimal chargeTotal,
            string billName, string billAddress1, string billCity, string billState, string billZip, string billPhone, string billEmail, string billCompany)
        {
            ServicePointManager.Expect100Continue = false;
            FDGGWSApiOrderService svc = new FDGGWSApiOrderService();
            svc.Url = @"https://ws.firstdataglobalgateway.com/fdggwsapi/services/order.wsdl";
            svc.ClientCertificates.Add(X509Certificate.CreateFromCertFile(@"C:\inetpub\wwwroot\pinnacle3learning.com\certificate\WS1001250113._.1.pem"));

            NetworkCredential nc = new NetworkCredential("WS1001250113._.1", "dIpn6yxv");
            svc.Credentials = nc;

            FDGGWSApiOrderRequest orderReq = new FDGGWSApiOrderRequest();
            Transaction trans = new Transaction();
            CreditCardTxType ccTxType = new CreditCardTxType();
            ccTxType.Type = CreditCardTxTypeType.sale;
            CreditCardData ccData = new CreditCardData();
            ccData.ItemsElementName = new ItemsChoiceType[] { ItemsChoiceType.CardNumber, ItemsChoiceType.ExpMonth, ItemsChoiceType.ExpYear, ItemsChoiceType.CardCodeValue };
            ccData.Items = new string[] { cardNumber, expMonth, expYear, cardCodeValue };
            trans.Items = new object[] { ccTxType, ccData };
            Payment payment = new Payment();
            payment.ChargeTotal = chargeTotal; 
            trans.Payment = payment;
            orderReq.Item = trans;

            Billing billing = new Billing();
            billing.Name = billName;
            billing.Address1 = billAddress1;
            billing.City = billCity;
            billing.State = billState;
            billing.Zip = billZip;
            billing.Email = billEmail;
            billing.Phone = billPhone;
            billing.Company = billCompany;
            trans.Billing = billing;

            try
            {
                FDGGWSApiOrderResponse orderResp = svc.FDGGWSApiOrder(orderReq);
                string approvalCode = string.Empty;
                if (orderResp.TransactionResult == "APPROVED")
                    approvalCode = orderResp.TransactionResult + orderResp.ApprovalCode;
                else
                    approvalCode = orderResp.TransactionResult + orderResp.ErrorMessage;
                return approvalCode;
            }
            catch (System.Web.Services.Protocols.SoapException ex)
            {
                string errorCode = ex.Detail.OuterXml;
                return errorCode;
            }
        }
    }
}