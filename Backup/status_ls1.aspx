<%@ Page language="c#" Codebehind="status_ls1.aspx.cs" AutoEventWireup="false" Inherits="LinkPointAPI_cs.status_ls1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>status</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<% if( fIE5 ){ %>
		<script language="javascript">
		var reqState=0;
		var reqState2=0;
		function showReqXML(){
		  if(reqState == 0){
		  document.all.xmlReqData.style.display = "";
		  document.all.xmlReq.innerText="Hide Request XML";
		  reqState = 1;
		  }else{
		  document.all.xmlReqData.style.display = 'none';
		  document.all.xmlReq.innerText="Show Request XML";
		  reqState = 0;
		  }
		}  
		function showReqXML2(){
		  if(reqState2 == 0){
		  document.all.xmlReqData2.style.display = "";
		  document.all.xmlReq2.innerText="Hide Request XML";
		  reqState2 = 1;
		  }else{
		  document.all.xmlReqData2.style.display = 'none';
		  document.all.xmlReq2.innerText="Show Request XML";
		  reqState2 = 0;
		  }		  
		}
		var resState=0;
		var resState2=0;
		function showResXML(){
		 if(resState == 0){
		  document.all.xmlResData.style.display = "";
		  document.all.xmlRes.innerText="Hide Response XML";
		  resState = 1;
		  } else {
		  document.all.xmlResData.style.display = 'none';
		  document.all.xmlRes.innerText="Show Response XML";
		  resState = 0;
		  }
		}		
		function showResXML2(){
		 if(resState2 == 0){
		  document.all.xmlResData2.style.display = "";
		  document.all.xmlRes2.innerText="Hide Response XML";
		  resState2 = 1;
		  } else {
		  document.all.xmlResData2.style.display = 'none';
		  document.all.xmlRes2.innerText="Show Response XML";
		  resState2 = 0;
		  }
		}				
		</script>
		<%}%>
		<%	
// Show first transaction
ParseResponse(resp);
%>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<p align="left"><b><font size="4">&nbsp;SALE TRANSACTION RESULT</font></b><br>
			<div align="center">
				<table border="1" cellpadding="0" cellspacing="0">
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp;SSL API Version:</td>
						<td width="808">&nbsp;&nbsp;<%=LPTxn.getVersion()%></td>
					</tr>
					<% if (R_Time.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Time:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Time%></td>
					</tr>
					<% } if (R_Ref.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Reference:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Ref%></td>
					</tr>
					<% } if (R_Approved.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Approval:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Approved%></td>
					</tr>
					<% } if (R_Code.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Approval code:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Code%></td>
					</tr>
					<% } %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Error:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Error%></td>
					</tr>
					<%  if (R_OrderNum.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Order number:</td>
						<td width="808">&nbsp;&nbsp;<%=R_OrderNum%></td>
					</tr>
					<% } if (R_Message.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Message:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Message%></td>
					</tr>
					<% } if (R_AVS.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; AVS:</td>
						<td width="808">&nbsp;&nbsp;<%=R_AVS%></td>
					</tr>
					<% } if (R_Score.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Score:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Score%></td>
					</tr>
					<% } if (R_Tax.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Tax:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Tax%></td>
					</tr>
					<% } if (R_Shipping.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Shipping:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Shipping%></td>
					</tr>
					<% } if (R_FraudCode.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Fraud Code:</td>
						<td width="808">&nbsp;&nbsp;<%=R_FraudCode%></td>
					</tr>
					<% } if (R_ESD.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; ESD:</td>
						<td width="808">&nbsp;&nbsp;<%=R_ESD%></td>
					</tr>
					<% } %>
				</table>
				<CENTER></CENTER>
			</div>
			<% 
		if ( fIE5 ) {
		// do DHTML	
		%>
			<a id="xmlReq" href="javascript:showReqXML()">Show Request XML</a>
			<div id="xmlReqData" style="DISPLAY: none">
				<% 
			
			Response.Write("<textarea cols=60 readonly rows=20>" + order + "</textarea>"); 
			%>
			</div>
			<a id="xmlRes" href="javascript:showResXML()">Show Response XML</a>
			<div id="xmlResData" style="DISPLAY: none">
				<%
			string  dbgXML;
			dbgXML = (resp.Replace("><",">\r\n<")).Replace(">\r\n</","></");
			Response.Write("<textarea  cols=70 readonly rows=14 wrap=off >" + dbgXML + "</textarea>") ;
			%>
			</div>
			<%}%>
		<p align="left"><b><font size="4">&nbsp;SCORING RESULT :</font></b>
			<br>
			<%=Session["scoreMsg"]%>
			<%if(Session["resp_2"]!=null) {
		ParseResponse(resp_2);
		%>
		<p align="left"><b><font size="4">&nbsp;VOID TRANSACTION RESULT</font></b><br>
			<div align="center">
				<table border="1" cellpadding="0" cellspacing="0">
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp;SSL API Version:</td>
						<td width="808">&nbsp;&nbsp;<%=LPTxn.getVersion()%></td>
					</tr>
					<% if (R_Time.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Time:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Time%></td>
					</tr>
					<% } if (R_Ref.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Reference:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Ref%></td>
					</tr>
					<% } if (R_Approved.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Approval:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Approved%></td>
					</tr>
					<% } if (R_Code.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Approval code:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Code%></td>
					</tr>
					<% } %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Error:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Error%></td>
					</tr>
					<%  if (R_OrderNum.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Order number:</td>
						<td width="808">&nbsp;&nbsp;<%=R_OrderNum%></td>
					</tr>
					<% } if (R_Message.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Message:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Message%></td>
					</tr>
					<% } if (R_AVS.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; AVS:</td>
						<td width="808">&nbsp;&nbsp;<%=R_AVS%></td>
					</tr>
					<% } if (R_Score.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Score:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Score%></td>
					</tr>
					<% } if (R_Tax.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Tax:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Tax%></td>
					</tr>
					<% } if (R_Shipping.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Shipping:</td>
						<td width="808">&nbsp;&nbsp;<%=R_Shipping%></td>
					</tr>
					<% } if (R_FraudCode.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; Fraud Code:</td>
						<td width="808">&nbsp;&nbsp;<%=R_FraudCode%></td>
					</tr>
					<% } if (R_ESD.Length > 0) { %>
					<tr>
						<td width="279" bgcolor="#c0c0c0" style="WIDTH: 279px">&nbsp; ESD:</td>
						<td width="808">&nbsp;&nbsp;<%=R_ESD%></td>
					</tr>
					<% } %>
				</table>
			</div>
			<% 
		if ( fIE5 ) {
		// do DHTML	
		%>
			<a id="xmlReq2" href="javascript:showReqXML2()">Show Request XML</a>
			<div id="xmlReqData2" style="DISPLAY: none">
				<% 
			
			Response.Write("<textarea cols=60 readonly rows=20>" + order_2 + "</textarea>"); 
			%>
			</div>
			<a id="xmlRes2" href="javascript:showResXML2()">Show Response XML</a>
			<div id="xmlResData2" style="DISPLAY: none">
				<%
			string  dbgXML;
			dbgXML = (resp_2.Replace("><",">\r\n<")).Replace(">\r\n</","></");
			Response.Write("<textarea  cols=70 readonly rows=14 wrap=off >" + dbgXML + "</textarea>") ;
			%>
			</div>
			<%}%>
			<%}%>
		<P></P>
		<DIV></DIV>
	</body>
</HTML>
