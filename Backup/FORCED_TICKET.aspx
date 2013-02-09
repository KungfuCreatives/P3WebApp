<%@ Page language="c#" Codebehind="FORCED_TICKET.aspx.cs" AutoEventWireup="false" Inherits="LinkPointAPI_cs.FORCED_TICKET" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>FORCED_TICKET</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form ACTION="FORCED_TICKET.aspx" METHOD="post" NAME="SaleForm" runat="server" ID="Form1">
			<p align="center"><b><font size="5">&nbsp;FORCED TICKET TRANSACTION</font></b><br>
			</p>
			<p align="center">An Example of a FORCED TICKET Transaction with Minimum Required 
				Fields
			</p>
			<div align="center">
				<center>
					<TABLE id="TABLE1" cellSpacing="0" cellPadding="0" width="318" border="0" height="29" bgcolor="#c0c0c0">
						<tr>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-TOP-STYLE: solid; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276" style="BORDER-TOP-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="9" style="WIDTH: 9px; BORDER-TOP-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px;  BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Total:</TD>
							<TD height="1" width="9" style="WIDTH: 9px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT id="szip3" style="WIDTH: 45px; HEIGHT: 22px" size="6" value="<%=subtotal%>" name="total"></TD>
						</TR>
						<tr>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">&nbsp;</TD>
							<TD height="1" width="9" style="WIDTH: 9px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">Card Number:</TD>
							<TD height="1" width="9" style="WIDTH: 9px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT id="emailaddress1" value="<%=cardnumber%>" name="cardnumber" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Exp. Month:</TD>
							<TD height="1" width="9" style="WIDTH: 9px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">
								<select id="expmonth" name="expmonth" size="1">
									<%WriteMonthOpts();%>
								</select></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Exp. Year:</TD>
							<TD height="1" width="9" style="WIDTH: 9px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">
								<select id="expyear" name="expyear" size="1">
									<%WriteYearOpts();%>
								</select></TD>
						</TR>
						<tr>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">&nbsp;</TD>
							<TD height="1" width="9" style="WIDTH: 9px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Reference Number:</TD>
							<TD height="1" width="9" style="WIDTH: 9px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT  style="WIDTH: 145px; HEIGHT: 22px" size="17" value="<%=refnumber%>" name="refnumber"></TD>
						</TR>
						<TR>
							<TD style="BORDER-LEFT-STYLE: solid; BORDER-BOTTOM-STYLE: solid" width="103" height="10">&nbsp;</TD>
							<TD style="BORDER-BOTTOM-STYLE: solid" width="276" height="10">&nbsp;</TD>
							<TD style="WIDTH: 9px; BORDER-BOTTOM-STYLE: solid" width="9" height="10">&nbsp;</TD>
							<TD style="BORDER-RIGHT-STYLE: solid;BORDER-BOTTOM-STYLE: solid" width="78" height="10">&nbsp;</TD>
						</TR>
					</TABLE>
				</center>
			</div>
			<p align="center"><input type="submit" value="Submit" name="Submit">
		</form>
		</P>
	</body>
</HTML>
