/*****************************************************************************
' Copyright 2003 LinkPoint International, Inc. All Rights Reserved.
' 
' This software is the proprietary information of LinkPoint International, Inc.  
' Use is subject to license terms.
'
'******************************************************************************/    

using System;
using System.Web;
using LinkPointTransaction;

namespace LinkPointAPI_cs
{
	/// <summary>
	/// Summary description for status.
	/// </summary>
	public class status : LinkPointTxn_Page
	{
		private void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here

			HttpBrowserCapabilities bc = Request.Browser;
			fIE5 = ( bc.Browser=="IE" && bc.MajorVersion > 4 );
			
				order    = (string) Session["outXml"];
				resp     = (string) Session["resp"];
    		    ParseResponse(resp);
			    // We need LPTxn to display version info
			    LPTxn = new LinkPointTxn();  
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
	
	protected string order;
	protected string resp;
	protected bool   fIE5;
	}
}
