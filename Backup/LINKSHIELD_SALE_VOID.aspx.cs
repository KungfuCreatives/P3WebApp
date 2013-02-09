/*****************************************************************************
' Copyright 2003 LinkPoint International, Inc. All Rights Reserved.
' 
' This software is the proprietary information of LinkPoint International, Inc.  
' Use is subject to license terms.
'
'******************************************************************************/    

using System;
using LinkPointTransaction;

namespace LinkPointAPI_cs
{
	/// <summary>
	/// Summary description for LINKSHIELD_SALE_VOID.
	/// </summary>
	public class LINKSHIELD_SALE_VOID : LinkPointTxn_Page
	{
		private void Page_Load(object sender, System.EventArgs e)
		{
			bool fDoVoid = false;
			string scoreMsg="";			

			if( IsPostBack )
			{
				// Parse form data
				ParseFormData();
				// Now we process SALE order
				ProcessOrder();
				// check LinkShield 'R_Score' value
				if(  R_Score.Length == 0 ) 
				{
					scoreMsg="No score was received in SALE transaction";
					// client is not setup for LinkShield
					fDoVoid = true;
				}
				else if(  R_Score.CompareTo("ERR") == 0  )
				{
					scoreMsg="Error occured in scoring during SALE transaction";
					// scoring error
					fDoVoid = true;
				}
				else
				{
                // get score value from the form
				int maxScore = -1;
				//try to parse value from form
					try
					{
						maxScore = Int32.Parse(score);
					}
					catch( Exception  ){}
				// get score value from transaction result
                int txnScore = Int32.Parse(R_Score);
                  
					// check to see if score is acceptable
					if( maxScore < txnScore )
					{
					scoreMsg = "The LinkShield risk score is too high : score="+txnScore;
                    fDoVoid = true;
					}
					else
					{
					scoreMsg = "The LinkShield risk score is: score="+txnScore;
					}
				}

				// store the scoreMsg
                Session["scoreMsg"] = scoreMsg;

				// if we didn't get acceptable score 
				// we VOID previous transaction
				if( fDoVoid)
				{
				ProcessVoid();
				}
             
			// we are done with transaction(s)
			// go to status page
			Server.Transfer("status_ls1.aspx");	
			
		  } // end ifPostBack


		}
	
		private void ProcessOrder()
		{
			// create order
			LPOrderPart order = LPOrderFactory.createOrderPart("order");
			// create a part we will use to build the order
			LPOrderPart op = LPOrderFactory.createOrderPart();

			// Build 'orderoptions'
			op.put("ordertype","SALE");
			// set transaction result
			op.put("result", Request.Form["result"]);
			// add 'orderoptions to order
			order.addPart("orderoptions", op ); 
			// Build 'transactiondetails'
			op.clear();
			op.put("transactionorigin",Request.Form["origin"] );
			// add 'transactiondetails to order
			order.addPart("transactiondetails", op);
			// Build 'merchantinfo'
			op.clear();
			op.put("configfile",configfile);
			// add 'merchantinfo to order
			order.addPart("merchantinfo", op );

			// Build 'payment'
			op.clear();
			op.put("subtotal",Request.Form["subtotal"]);
			op.put("tax",Request.Form["tax"]);
			op.put("shipping",Request.Form["shipping"]);
			op.put("chargetotal",Request.Form["total"]);
			// add 'payment to order
			order.addPart("payment", op );

			// Build 'creditcard'
			op.clear();
			op.put("cardnumber",cardnumber);
			op.put("cardexpmonth",expmonth);
			op.put("cardexpyear",expyear);
			op.put("cvmvalue",cvmvalue);
			op.put("cvmindicator",cvmindicator);
			// add 'creditcard to order
			order.addPart("creditcard", op );

			// Build 'billing'
			op.clear();
			op.put("name",bname);
			op.put("company",bcompany);
			op.put("address1",baddr1);
			op.put("address2",baddr2);
			op.put("city",bcity);
			op.put("state",bstate);
			// Required for AVS. If not provided, 
			// transactions will downgrade.			
			op.put("zip",bzip);
			op.put("addrnum",baddrnum);
			op.put("country",bcountry);
			op.put("phone",bphone);
			op.put("fax",bfax);
			op.put("email",bemail);
			// add 'billing to order
			order.addPart("billing", op );

			// Build 'shipping'
			op.clear();
			op.put("name",sname);
			op.put("address1",saddr1);
			op.put("address2",saddr2);
			op.put("city",scity);
			op.put("state",sstate);
			op.put("zip",szip);
			op.put("country",scountry);

			// Create some parts we use to build order itmes
			LPOrderPart items = LPOrderFactory.createOrderPart();
			LPOrderPart item = LPOrderFactory.createOrderPart();	
			LPOrderPart options = LPOrderFactory.createOrderPart();

			//  build 'item' 
			item.put("id",Request.Form["id2"]);
			item.put("description",Request.Form["desc2"]);
			item.put("quantity",Request.Form["qty2"]);
			item.put("price",Request.Form["price2"]);
			item.put("serial",Request.Form["serial2"]);
			// build item's options
			op.clear();
			op.put("name","Color");
			op.put("value",Request.Form["Color"]);
			options.addPart("option",op,1);			
			op.clear();
			op.put("name","Size");
			op.put("value",Request.Form["Size"]);
			options.addPart("option",op,2);
			// add 'options' to item
			item.addPart("options", options );
			// add 'item' to 'items' collection
			items.addPart("item", item); 
			// add 'items' to order
			order.addPart("items", items );
			
			// add notes 	
			op.clear();
			op.put("comments",comments);
			op.put("referred",referred);
			order.addPart("notes",op);

			// create transaction object	
			LinkPointTxn LPTxn = new LinkPointTxn();

			// get outgoing XML from the 'order' object
			string outXml = order.toXML();

			// Call LPTxn
			string resp = LPTxn.send(keyfile,host,port, outXml);
			
			// parse response
			ParseResponse(resp);

			//Store transaction data on Session and redirect
			Session["outXml"] = outXml;
			Session["resp"] = resp;
		}	
		private void ProcessVoid()
		{
			// create order
			LPOrderPart order = LPOrderFactory.createOrderPart("order");
			// create a part we will use to build the order
			LPOrderPart op = LPOrderFactory.createOrderPart();
				
			// Build 'orderoptions'
			op.put("ordertype","VOID");
			// add 'orderoptions to order
			order.addPart("orderoptions", op ); 
		
			// Build 'merchantinfo'
			op.clear();
			op.put("configfile",configfile);
			// add 'merchantinfo to order
			order.addPart("merchantinfo", op );


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

			// Add oid
			op.clear();
			op.put("oid",R_OrderNum);
			// add 'transactiondetails to order
			order.addPart("transactiondetails", op );
			
			// create transaction object	
			LinkPointTxn LPTxn = new LinkPointTxn();

			// get outgoing XML from the 'order' object
			string outXml = order.toXML();

			// Call LPTxn
			string resp = LPTxn.send(keyfile,host,port, outXml);
			
			//Store transaction data on Session and redirect
			Session["outXml_2"] = outXml;
			Session["resp_2"] = resp;
			
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
