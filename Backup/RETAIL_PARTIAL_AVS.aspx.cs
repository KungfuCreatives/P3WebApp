///////////////////////////////////////////////////////////////////////////////
// Copyright 2003 LinkPoint International, Inc. All Rights Reserved.
// 
// This software is the proprietary information of LinkPoint International, Inc.  
// Use is subject to license terms.
///////////////////////////////////////////////////////////////////////////////
using System;
using LinkPointTransaction;

namespace LinkPointAPI_cs
{
	/// <summary>
	/// Summary description for RETAIL_PARTIAL_AVS.
	/// </summary>
	public class RETAIL_PARTIAL_AVS : LinkPointTxn_Page
	{
		private void Page_Load(object sender, System.EventArgs e)
		{
			if( IsPostBack )
			{
				// Parse form data
				ParseFormData();
				// process order
				ProcessOrder();
			}
		}
	
		private void ProcessOrder()
		{
			// create order
			LPOrderPart order = LPOrderFactory.createOrderPart("order");
			// create a part we will use to build the order
			LPOrderPart op = LPOrderFactory.createOrderPart();
				
			// Build 'orderoptions'
			op.put("ordertype","SALE");
			// add 'orderoptions to order
			order.addPart("orderoptions", op ); 
	
	
			// Build 'merchantinfo'
			op.clear();
			op.put("configfile",configfile);
			// add 'merchantinfo to order
			order.addPart("merchantinfo", op );

			// Build 'transactiondetails'
			op.clear();
			// set terminaltype to POS for an electronic 
			// cash register or integrated POS system, 
			// STANDALONE for a point-of-sale credit card terminal, 
			// UNATTENDED for a self-service station, or 
			// UNSPECIFIED for e-commerce or other applications
			op.put("terminaltype","UNATTENDED");
			op.put("transactionorigin","RETAIL");    
			// add 'transactiondetails to order
			order.addPart("transactiondetails", op );

			// Build 'billing'
			op.clear();
			//For an UNATTENDED terminaltype, 
			// do a partial AVS: zip code only.
			op.put("zip",bzip);
			// add 'billing to order
			order.addPart("billing", op );


			// Build 'creditcard'
			op.clear();
			op.put("cardnumber",cardnumber);
			op.put("cardexpmonth",expmonth);
			op.put("cardexpyear",expyear);
			// add 'creditcard to order
			order.addPart("creditcard", op );

			// Build 'payment'
			op.clear();
			op.put("chargetotal",total);
			// add 'payment to order
			order.addPart("payment", op );
			
			// create transaction object	
			LinkPointTxn LPTxn = new LinkPointTxn();

			// get outgoing XML from the 'order' object
			string outXml = order.toXML();

			// Call LPTxn
			string resp = LPTxn.send(keyfile,host,port, outXml);
			
			//Store transaction data on Session and redirect
			Session["outXml"] = outXml;
			Session["resp"] = resp;
			Server.Transfer("status.aspx");
			
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    
			this.Load += new System.EventHandler(this.Page_Load);
		}
		#endregion
	}
}
