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
	/// Summary description for VCHECK_SALE.
	/// </summary>
	public class VCHECK_SALE : LinkPointTxn_Page
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
			op.put("result","LIVE");
			op.put("ordertype","SALE");
			// add 'orderoptions to order
			order.addPart("orderoptions", op ); 
	
	
			// Build 'merchantinfo'
			op.clear();
			op.put("configfile",configfile);
			// add 'merchantinfo to order
			order.addPart("merchantinfo", op );


			// Build 'billing'
			op.clear();
			op.put("name",bname);
			op.put("address1",baddr1);
			op.put("address2",baddr2);
			op.put("state",bstate);
			op.put("city",bcity);
			op.put("zip",bzip);
			op.put("phone",bphone);
			op.put("email",bemail);  
			op.put("fax",bfax);   
			// add 'billing to order
			order.addPart("billing", op );


			// Build 'telecheck' part
			op.clear();
			op.put("routing",routeNbr);
			op.put("account",accountNbr);
			op.put("checknumber",checkNbr);	
			op.put("accounttype",accttype);
			op.put("dl",dl);
			op.put("ssn",ssn);
			op.put("dlstate",dlState);
			op.put("bankname",bankName);
			op.put("bankstate",bankState);
			// add 'telecheck' to order
			order.addPart("telecheck", op );


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
