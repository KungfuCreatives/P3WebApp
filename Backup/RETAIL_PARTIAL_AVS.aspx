<%@ Page language="c#" Codebehind="RETAIL_PARTIAL_AVS.aspx.cs" AutoEventWireup="false" Inherits="LinkPointAPI_cs.RETAIL_PARTIAL_AVS" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>RETAIL_PARTIAL_AVS</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form ACTION="RETAIL_PARTIAL_AVS.aspx" METHOD="post" NAME="SaleForm" runat="server" ID="Form1">
			<p align="center"><b><font size="5">&nbsp;RETAIL PARTIAL AVS TRANSACTION </font></b>
			</p>
			<p align="center">An Example Credit Card SALE Transaction with Minimum Required 
				Fields</p>
			<div align="center">
				<center>
					<TABLE id="TABLE1" cellSpacing="0" cellPadding="0" width="356" border="0" height="210" bgcolor="#c0c0c0" style="WIDTH: 356px; HEIGHT: 210px">
						<tr>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-TOP-STYLE: solid; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276" style="BORDER-TOP-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="115" style="WIDTH: 115px; BORDER-TOP-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px;  BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Order Type:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><b>SALE</b></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px;  BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Terminal Type<FONT color="red">*</FONT>:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><b>UNATTENDED</b></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px;  BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Total:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT id="szip3" style="WIDTH: 45px; HEIGHT: 22px" size="6" value="<%=subtotal%>" name="total"></TD>
						</TR>
						<tr>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">&nbsp;</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">Card Number:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT id="emailaddress1" value="<%=cardnumber%>" name="cardnumber" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Exp. Month:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">
								<select id="expmonth" name="expmonth" size="1">
									<%WriteMonthOpts();%>
								</select></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Exp. Year:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">
								<select id="expyear" name="expyear" size="1">
									<%WriteYearOpts();%>
								</select></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Zip<FONT color="red">**</FONT>:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT  style="WIDTH: 45px; HEIGHT: 22px" size="4" value="<%=bzip%>" name="bzip"></TD>
						</TR>
						<TR>
							<TD style="BORDER-LEFT-STYLE: solid; BORDER-BOTTOM-STYLE: solid" width="103" height="10">&nbsp;</TD>
							<TD style="BORDER-BOTTOM-STYLE: solid" width="276" height="10">&nbsp;</TD>
							<TD style="WIDTH: 115px; BORDER-BOTTOM-STYLE: solid" width="115" height="10">&nbsp;</TD>
							<TD style="BORDER-RIGHT-STYLE: solid;BORDER-BOTTOM-STYLE: solid" width="78" height="10">&nbsp;</TD>
						</TR>
					</TABLE>
				</center>
			</div>
			<P align="left"><FONT color="red">*</FONT> )Set terminaltype to POS for an 
				electronic cash register or integrated POS system, STANDALONE for a 
				point-of-sale credit card terminal, UNATTENDED for a self-service station, or 
				UNSPECIFIED for e-commerce or other applications</P>
			<P align="left"><FONT color="red">**</FONT>
			)You should not do AVS for a retail swiped transaction, unless it is an 
			UNATTENDED terminaltype.For an UNATTENDED terminaltype, do a partial AVS: zip 
			code only.
			<P></P>
			<p align="center"><input type="submit" value="Submit" name="Submit">
		</form>
		</P>
	</body>
</HTML>
