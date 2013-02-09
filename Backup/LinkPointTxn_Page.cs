///////////////////////////////////////////////////////////////////////////////
// Copyright 2003 LinkPoint International, Inc. All Rights Reserved.
// 
// This software is the proprietary information of LinkPoint International, Inc.  
// Use is subject to license terms.
///////////////////////////////////////////////////////////////////////////////
using System;
using System.Text;
using System.Collections;
using System.Configuration;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Collections.Specialized;
using LinkPointTransaction;


namespace LinkPointAPI_cs 
{
	/// <summary>
	/// Summary description for LinkPointTxn_Page.
	/// </summary>
	public class LinkPointTxn_Page : System.Web.UI.Page
	{
		public LinkPointTxn_Page()
		{
		}
	
		public void WriteYearOpts()
		{
			int year = DateTime.Now.Year;
			string pad="";
			string sel="";

			try
			{
			expyearVal = Int32.Parse(expyear);
            if(expyearVal<10) expyearVal +=2000;
			}
			catch(Exception )
			{
			expyearVal = year;
			}

			for(int yr = year; yr <= year+5; yr++)
			{
				sel = expyearVal == yr ? " selected " : "";
				pad = (yr-2000) < 10 ? "0" : ""; 
				Response.Write ("<option value=" + pad + (yr-2000) + sel +">" + yr +  "</option>");
			}	
		}
	
		public void WriteMonthOpts()
		{
			int mn; 
			int cur = Int32.Parse(expmonth);
			string pad="";
		

			for( mn =1; mn <= 12; mn++)
			{
				pad = mn < 10 ? "0" : ""; 
				if ( mn == cur )
					Response.Write( "<option value=" + pad + mn + " selected>" + mn + "</option>");
				else
					Response.Write ("<option value=" + pad + mn + ">" + mn + "</option>");
			}

		}	

		protected void ParseFormData()
		{
			bname = Request.Form["bname"];
			bcompany = Request.Form["bcompany"];
			baddr1 = Request.Form["baddr1"];
			baddr2 = Request.Form["baddr2"];
			bstate = Request.Form["bstate"];
			bcity = Request.Form["bcity"];
			bcountry = Request.Form["bcountry"];
			bzip = Request.Form["bzip"];
			bemail = Request.Form["bemail"];
			bfax = Request.Form["bfax"];
			bphone = Request.Form["bphone"];
			baddrnum = Request.Form["baddrnum"];

			sname = Request.Form["sname"];
		
			saddr1 = Request.Form["saddr1"];
			saddr2 = Request.Form["saddr2"];
			scity = Request.Form["scity"];
			sstate = Request.Form["sstate"];
			scountry = Request.Form["scountry"];
			szip = Request.Form["szip"];
			scarrier = Request.Form["scarrier"];
			sweight = Request.Form["sweight"];
			sitems = Request.Form["sitems"];
			stotal = Request.Form["stotal"];   
 
			//phonenumber = Request.Form["phone"];
			//faxnumber = Request.Form["fax"];
			//emailaddress = Request.Form["emailaddress"];
			comments = Request.Form["comments"];

			cardnumber = Request.Form["cardnumber"];
			expmonth = Request.Form["expmonth"];
			expyear = Request.Form["expyear"];
			//cvmindicator = Request.Form["cvmindicator"];
			cvmvalue = Request.Form["cvmvalue"];

			subtotal = Request.Form["subtotal"];
			if ( (subtotal == null) || subtotal.Length < 1 ){ subtotal = "0.0"; }
			tax = Request.Form["tax"];
			if ( (tax==null) || tax.Length < 1 ){ tax = "0.0"; }
			shipping = Request.Form["shipping"];
			if ( (shipping==null) || shipping.Length < 1 ){ shipping = "0.0"; }
			total = Request.Form["total"];
			if ( (total==null) || total.Length < 1 ){ total = "0.0"; }
			pbthreshold = Request.Form["pbthreshold"];
			startdate = Request.Form["startdate"];
			periodicity = Request.Form["periodicity"];
			installments = Request.Form["installments"];
			pbcomments = Request.Form["pbcomments"];

			accttype = Request.Form["accttype"];
			micr = Request.Form["micr"];

			accountNbr = Request.Form["accountNbr"];
			routeNbr = Request.Form["routeNbr"];
			bankName = Request.Form["bankName"];
			bankState = Request.Form["bankState"];
			dl = Request.Form["dl"];
			dlState = Request.Form["dlState"];
			ssn = Request.Form["ssn"];
			checkNbr = Request.Form["checkNbr"];

			refnumber = Request.Form["refnumber"]; 
			tax   = Request.Form["tax"]; 
			taxexempt = Request.Form["taxexempt"]; 
			oid  = Request.Form["oid"]; 

			comments = Request.Form["comments"]; 
			referred  = Request.Form["referred"]; 
			result = Request.Form["result"]; 
			origin  = Request.Form["origin"]; 
			score = Request.Form["score"]; 

			GetConfigParams();
		}


		protected void ParseResponse( string rsp )
		{
			R_Time=ParseTag("r_time",rsp);
			R_Ref=ParseTag("r_ref",rsp);
			R_Approved=ParseTag("r_approved",rsp);
			R_Code=ParseTag("r_code",rsp);
			R_Authresr=ParseTag("r_authresronse",rsp);
			R_Error=ParseTag("r_error",rsp);
			R_OrderNum=ParseTag("r_ordernum",rsp);
			R_Message=ParseTag("r_message",rsp);
			R_Score=ParseTag("r_score",rsp);
			R_TDate=ParseTag("r_tdate",rsp);
			R_AVS=ParseTag("r_avs",rsp);
			R_Tax=ParseTag("r_tax",rsp);
			R_Shipping=ParseTag("r_shipping",rsp);
			R_FraudCode=ParseTag("r_fraudCode",rsp);
			R_ESD=ParseTag("esd",rsp);		
		}

		protected string ParseTag(string tag, string rsp )
		{
			StringBuilder sb = new StringBuilder(256);
			sb.AppendFormat("<{0}>",tag);
			int len = sb.Length; 
			int idxSt=-1,idxEnd=-1; 
			if( -1 == (idxSt = rsp.IndexOf(sb.ToString())))
			{ return ""; }
			idxSt += len;
			sb.Remove(0,len);
			sb.AppendFormat("</{0}>",tag);
			if( -1 == (idxEnd = rsp.IndexOf(sb.ToString(),idxSt)))
			{ return ""; }
			return rsp.Substring(idxSt,idxEnd-idxSt);
		}

		void GetConfigParams()
		{
			// get some stuff from app config
			NameValueCollection config  =  (NameValueCollection)ConfigurationSettings.GetConfig("LPAPP_Config/client");
		
			configfile = config["Configfile"];
			keyfile = config["Keyfile"];
			host = config["Host"];
			port = Int32.Parse(config["Port"]);
			
			config  =  (NameValueCollection)ConfigurationSettings.GetConfig("LPAPP_Config/opts");
			
			try{
			fLog  = bool.Parse(config["fLog"]); 	
			}catch(Exception  ){}

			try
			{
			logLvl  = Int32.Parse(config["logLvl"]); 	
			}
			catch(Exception){}

			try
			{
			logFile  = config["logFile"]; 	
			}
			catch(Exception  ){}
			
		}
	
	

   // Init value for form fields
   // for all samples
    protected string bname="Joe Customer";
    protected string bcompany="SomeWhere, Inc.";
    protected string baddr1="123 Broadway";
    protected string baddr2="Suite 23";
    protected string bstate="CA";
    protected string bcity="Moorpark";
    protected string bcountry="US";
    protected string bphone="8051234567";
    protected string bfax="8059876543";    
    protected string bemail="joe.customer@somewhere.com";  
    protected string baddrnum="123";     
    protected string bzip="87123";


    protected string sname="Joe Customer";
    protected string saddr1="123 Broadway";
    protected string saddr2="Suite 23";
    protected string scity="Moorpark";
    protected string sstate="CA";
    protected string scountry="US";
    protected string szip="12345";
    protected string semail="joe.customer@somewhere.com";  
    protected string sfax="8059876543";    
    protected string saddrnum="123";  

    protected string sweight="1.2";    
    protected string sitems="1";     
    protected string scarrier="2";
    protected string stotal="12.99";

    protected string comments="Repeat customer. Ship immediately.";
    protected string referred="Saw ad on Web site.";


    protected string cardnumber="4000000000000010";
    protected string expmonth="03";
    protected string expyear="05";
    protected string cvmvalue="123";
    protected string cvmindicator="provided";
    protected int expyearVal = 2005;

    protected string subtotal="12.99";
    protected string tax="0.34";
    protected string shipping="1.45";
    protected string total="14.78";
    protected string vattax="0.0";

    protected string refnumber="NEW987654";    
    protected string ponumber="1203A-G4567"; 
    protected string taxexempt="N"; 
    protected string oid="9090018-A345";     

	protected string startdate="immediate";
    protected string periodicity="monthly";
    protected string installments="3";
    protected string pbthreshold="3";
    protected string pbcomments="";

    protected string accttype="pc";
    
    protected string micr="%B4111111111111111^CUSTOMER/JOE           ^0503000500000?";
    protected string accountNbr="2139842610";
    protected string routeNbr="123456789";
    protected string bankName="";
    protected string bankState="CA";
    protected string dl="120381698";
    protected string dlState="CA";
    protected string ssn="";
    protected string checkNbr="";
    protected string odate="";

	protected string result="LIVE";   
	protected string origin="MOTO"; 

	// LinkShield score	
    // default for our samples is 70
	protected string score="70";  
    
    // transaction object
	protected LinkPointTxn LPTxn;
	// config params
	protected  string configfile;
	protected  string keyfile;
	protected  string host;
	protected  int	port;

	// response holders
	protected string R_Time;
	protected string R_Ref;
	protected string R_Approved;
	protected string R_Code;
	protected string R_Authresr;
	protected string R_Error;
	protected string R_OrderNum;
	protected string R_Message;
	protected string R_Score;
	protected string R_TDate;
	protected string R_AVS;
	protected string R_FraudCode;
	protected string R_ESD;
	protected string R_Tax;
	protected string R_Shipping;

	protected bool fLog=false;
	protected int  logLvl=0;
    protected string  logFile="";
	}

	
	

}
