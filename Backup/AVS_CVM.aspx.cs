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
	/// Summary description for AVS_CVM.
	/// </summary>
	public class AVS_CVM : LinkPointTxn_Page
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

			// Build 'billing'
			op.clear();
			op.put("zip",bzip);
			op.put("addrnum",baddrnum);
			// add 'billing to order
			order.addPart("billing", op );

			// Build 'creditcard'
			op.clear();
			op.put("cardnumber",cardnumber);
			op.put("cardexpmonth",expmonth);
			op.put("cardexpyear",expyear);
			op.put("cvmvalue",cvmvalue);
			op.put("cvmindicator",cvmindicator);
			// add 'creditcard to order
			order.addPart("creditcard", op );

			// Build 'payment'
			op.clear();
			op.put("chargetotal",subtotal);
			// add 'payment to order
			order.addPart("payment", op );	
			
			// create transaction object	
			LinkPointTxn LPTxn = new LinkPointTxn();

			// setup logging if needed
			// see Web.config file for more details on logging
			if( fLog )
			{
			 string msg = "";
             // if returned 'res' is negative, you can check
			 // the 'msg' string to see the reason the call failed.
			 int res = LPTxn.setDbgOpts(logFile,3, ref msg);
			}

			// get outgoing XML from 'order' object
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
