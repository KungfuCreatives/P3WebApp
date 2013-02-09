<%@ Page language="c#" Codebehind="PB_NEW.aspx.cs" AutoEventWireup="false" Inherits="LinkPointAPI_cs.PB_NEW" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>PB_NEW</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form ACTION="PB_NEW.aspx" METHOD="post" NAME="SaleForm" runat="server" ID="Form1">
			<p align="center"><b><font size="5">&nbsp;PERIODIC BILLING (NEW)</font></b><br>
			</p>
			<p align="center">An Example of New Periodic Billing Transaction with Minimum 
				Required Fields</p>
			<div align="center">
				<center>
					<TABLE id="TABLE1" cellSpacing="0" cellPadding="0" width="368" border="0" height="249" bgcolor="#c0c0c0" style="WIDTH: 368px; HEIGHT: 249px">
						<tr>
							<TD height="1" width="30" style="WIDTH: 30px; BORDER-TOP-STYLE: solid; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="220" style="WIDTH: 220px; BORDER-TOP-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="115" style="WIDTH: 115px; BORDER-TOP-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="249" style="WIDTH: 249px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="1" width="30" style="WIDTH: 30px;  BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="220" style="WIDTH: 220px">Total:</TD>
							<TD height="1" width="115" style="WIDTH: 115px"></TD>
							<TD height="1" width="249" style="WIDTH: 249px; BORDER-RIGHT-STYLE: solid"><INPUT id="szip3" style="WIDTH: 45px; HEIGHT: 22px" size="6" value="<%=subtotal%>" name="total"></TD>
						</TR>
						<!--						
						<tr>
							<TD height="1" width="30" style="WIDTH: 30px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="220" style="WIDTH: 220px">&nbsp;</TD>
							<TD height="1" width="115" style="WIDTH: 115px"></TD>
							<TD height="1" width="249" style="WIDTH: 249px; BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
-->
						<TR>
							<TD height="1" width="30" style="WIDTH: 30px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="220" style="WIDTH: 220px">Card Number:</TD>
							<TD height="1" width="115" style="WIDTH: 115px"></TD>
							<TD height="1" width="249" style="WIDTH: 249px; BORDER-RIGHT-STYLE: solid"><INPUT id="emailaddress1" value="<%=cardnumber%>" name="cardnumber" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="30" style="WIDTH: 30px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="220" style="WIDTH: 220px">Exp. Month:</TD>
							<TD height="1" width="115" style="WIDTH: 115px"></TD>
							<TD height="1" width="249" style="WIDTH: 249px; BORDER-RIGHT-STYLE: solid">
								<select id="expmonth" name="expmonth" size="1">
									<%WriteMonthOpts();%>
								</select></TD>
						</TR>
						<TR>
							<TD height="28" width="30" style="WIDTH: 30px; BORDER-LEFT-STYLE: solid; HEIGHT: 28px">&nbsp;</TD>
							<TD height="28" width="220" style="WIDTH: 220px; HEIGHT: 28px">Exp. Year:</TD>
							<TD height="28" width="115" style="WIDTH: 115px; HEIGHT: 28px"></TD>
							<TD height="28" width="249" style="WIDTH: 249px; BORDER-RIGHT-STYLE: solid; HEIGHT: 28px">
								<select id="expyear" name="expyear" size="1">
									<%WriteYearOpts();%>
								</select></TD>
						</TR>
						<TR>
							<TD height="1" width="30" style="WIDTH: 30px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="220" style="WIDTH: 220px">Address Numbers<FONT color="red">*</FONT>:</TD>
							<TD height="1" width="115" style="WIDTH: 115px"></TD>
							<TD height="1" width="249" style="WIDTH: 249px; BORDER-RIGHT-STYLE: solid"><INPUT  style="WIDTH: 45px; HEIGHT: 22px" size="4" value="<%=baddrnum%>" name="baddrnum"></TD>
						</TR>
						<TR>
							<TD height="1" width="30" style="WIDTH: 30px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="220" style="WIDTH: 220px">Zip<FONT color="red">*</FONT>:</TD>
							<TD height="1" width="115" style="WIDTH: 115px"></TD>
							<TD height="1" width="249" style="WIDTH: 249px; BORDER-RIGHT-STYLE: solid"><INPUT  style="WIDTH: 45px; HEIGHT: 22px" size="4" value="<%=bzip%>" name="bzip"></TD>
						</TR>
						<tr>
							<TD height="1" width="30" style="WIDTH: 30px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="220" style="WIDTH: 220px">&nbsp;</TD>
							<TD height="1" width="115" style="WIDTH: 115px"></TD>
							<TD height="1" width="249" style="WIDTH: 249px; BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="1" width="30" style="WIDTH: 30px;  BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="220" style="WIDTH: 220px">Action:</TD>
							<TD height="1" width="115" style="WIDTH: 115px"></TD>
							<TD height="1" width="249" style="WIDTH: 249px; BORDER-RIGHT-STYLE: solid"><b>SUBMIT</b></TD>
						</TR>
						<TR>
							<TD height="1" width="30" style="WIDTH: 30px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="220" style="WIDTH: 220px">Start Date:</TD>
							<TD height="1" width="115" style="WIDTH: 115px"></TD>
							<TD height="1" width="249" style="WIDTH: 249px; BORDER-RIGHT-STYLE: solid"><INPUT  style=" HEIGHT: 22px" size="10" value="<%=startdate%>" name="startdate"></TD>
						</TR>
						<TR>
							<TD height="1" width="30" style="WIDTH: 30px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="220" style="WIDTH: 220px">Periodicity:</TD>
							<TD height="1" width="115" style="WIDTH: 115px"></TD>
							<TD height="1" width="249" style="WIDTH: 249px; BORDER-RIGHT-STYLE: solid"><INPUT  style=" HEIGHT: 22px" size="10" value="<%=periodicity%>" name="periodicity"></TD>
						</TR>
						<TR>
							<TD height="1" width="30" style="WIDTH: 30px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="220" style="WIDTH: 220px">Installments:</TD>
							<TD height="1" width="115" style="WIDTH: 115px"></TD>
							<TD height="1" width="249" style="WIDTH: 249px; BORDER-RIGHT-STYLE: solid"><INPUT  style="WIDTH: 45px; HEIGHT: 22px" size="4" value="<%=installments%>" name="installments"></TD>
						</TR>
						<TR>
							<TD height="1" width="30" style="WIDTH: 30px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="220" style="WIDTH: 220px">Threshold:</TD>
							<TD height="1" width="115" style="WIDTH: 115px"></TD>
							<TD height="1" width="249" style="WIDTH: 249px; BORDER-RIGHT-STYLE: solid"><INPUT  style="WIDTH: 45px; HEIGHT: 22px" size="4" value="<%=pbthreshold%>" name="pbthreshold"></TD>
						</TR>
						<TR>
							<TD style="WIDTH: 30px; BORDER-LEFT-STYLE: solid; HEIGHT: 23px; BORDER-BOTTOM-STYLE: solid" width="30" height="23">&nbsp;</TD>
							<TD style="WIDTH: 220px; HEIGHT: 23px; BORDER-BOTTOM-STYLE: solid" width="220" height="23">&nbsp;</TD>
							<TD style="WIDTH: 115px; HEIGHT: 23px; BORDER-BOTTOM-STYLE: solid" width="115" height="23">&nbsp;</TD>
							<TD style="WIDTH: 249px;BORDER-RIGHT-STYLE: solid;HEIGHT: 23px;BORDER-BOTTOM-STYLE: solid" width="249" height="23">&nbsp;</TD>
						</TR>
					</TABLE>
				</center>
				<p align="center"><input type="submit" value="Submit" name="Submit"></p>
			</div>
			<P align="left"><FONT color="red">*</FONT>) If not provided, transactions will 
				downgrade.
			</P>
		</form>
	</body>
</HTML>
