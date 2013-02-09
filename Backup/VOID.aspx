<%@ Page language="c#" Codebehind="VOID.aspx.cs" AutoEventWireup="false" Inherits="LinkPointAPI_cs.VOID" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>VOID</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form ACTION="VOID.aspx" METHOD="post" NAME="SaleForm" runat="server" ID="Form1">
			<p align="center"><b><font size="5">&nbsp;CREDIT CARD VOID TRANSACTION</font></b><br>
			</p>
			<p align="center">An Example Credit Card Void Transaction with Minimum Required 
				Fields</p>
			<div align="center">
				<center>
					<TABLE id="TABLE1" cellSpacing="0" cellPadding="0" width="396" border="0" height="233" bgcolor="#c0c0c0" style="WIDTH: 396px; HEIGHT: 233px">
						<tr>
							<TD height="1" width="63" style="WIDTH: 63px; BORDER-TOP-STYLE: solid; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="242" style="WIDTH: 242px; BORDER-TOP-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="115" style="WIDTH: 115px; BORDER-TOP-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="357" style="WIDTH: 357px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="1" width="63" style="WIDTH: 63px;  BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="242" style="WIDTH: 242px">Order Type:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="357" style="WIDTH: 357px; BORDER-RIGHT-STYLE: solid"><b>VOID</b></TD>
						<TR>
							<TD height="1" width="63" style="WIDTH: 63px;  BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="242" style="WIDTH: 242px">Total:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="357" style="WIDTH: 357px; BORDER-RIGHT-STYLE: solid"><INPUT  style="WIDTH: 45px; HEIGHT: 22px" size="6" value="<%=subtotal%>" name="total"></TD>
						</TR>
						<tr>
							<TD height="1" width="63" style="WIDTH: 63px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="242" style="WIDTH: 242px">&nbsp;</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="357" style="WIDTH: 357px; BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="1" width="63" style="WIDTH: 63px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="242" style="WIDTH: 242px">Card Number:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="357" style="WIDTH: 357px; BORDER-RIGHT-STYLE: solid"><INPUT id="emailaddress1" value="<%=cardnumber%>" name="cardnumber" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="63" style="WIDTH: 63px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="242" style="WIDTH: 242px">Exp. Month:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="357" style="WIDTH: 357px; BORDER-RIGHT-STYLE: solid">
								<select id="expmonth" name="expmonth" size="1">
									<%WriteMonthOpts();%>
								</select></TD>
						</TR>
						<TR>
							<TD height="1" width="63" style="WIDTH: 63px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="242" style="WIDTH: 242px">Exp. Year:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="357" style="WIDTH: 357px; BORDER-RIGHT-STYLE: solid">
								<select id="expyear" name="expyear" size="1">
									<%WriteYearOpts();%>
								</select></TD>
						</TR>
						<tr>
							<TD height="1" width="63" style="WIDTH: 63px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="242" style="WIDTH: 242px">&nbsp;</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="357" style="WIDTH: 357px; BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="1" width="63" style="WIDTH: 63px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="242" style="WIDTH: 242px">Order ID<FONT color="red">*</FONT>:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="357" style="WIDTH: 357px; BORDER-RIGHT-STYLE: solid"><INPUT  style="WIDTH: 213px; HEIGHT: 22px" size="30" value="<%=oid%>" name="oid"></TD>
						</TR>
						<TR>
							<TD height="1" width="63" style="WIDTH: 63px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="242" style="WIDTH: 242px"></TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="357" style="WIDTH: 357px; BORDER-RIGHT-STYLE: solid"></TD>
						</TR>
						<TR>
							<TD style="WIDTH: 63px; BORDER-LEFT-STYLE: solid; HEIGHT: 8px; BORDER-BOTTOM-STYLE: solid" width="63" height="8">&nbsp;</TD>
							<TD style="WIDTH: 242px; HEIGHT: 8px; BORDER-BOTTOM-STYLE: solid" width="242" height="8">&nbsp;</TD>
							<TD style="WIDTH: 115px; HEIGHT: 8px; BORDER-BOTTOM-STYLE: solid" width="115" height="8">&nbsp;</TD>
							<TD style="WIDTH: 357px;BORDER-RIGHT-STYLE: solid;HEIGHT: 8px;BORDER-BOTTOM-STYLE: solid" width="357" height="8">&nbsp;</TD>
						</TR>
					</TABLE>
				</center>
			</div>
			<P align="left"><FONT color="red">*</FONT>) Must be a valid order ID from a prior 
				PostAuth or Sale</P>
			<p align="center"><input type="submit" value="Submit" name="Submit">
		</form>
		</P>
	</body>
</HTML>
