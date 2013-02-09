<%@ Page language="c#" Codebehind="RETAIL_SWIPE.aspx.cs" AutoEventWireup="false" Inherits="LinkPointAPI_cs.RETAIL_SWIPE" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>RETAIL_SWIPE</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form ACTION="RETAIL_SWIPE.aspx" METHOD="post" NAME="SaleForm" runat="server" ID="Form1">
			<p align="center"><b><font size="5">&nbsp;RETAIL SWIPE TRANSACTION </font></b>
				<br>
			</p>
			<p align="center">An Example Credit Card SALE Transaction with Minimum Required 
				Fields</p>
			<div align="center">
				<center>
					<TABLE id="TABLE1" cellSpacing="0" cellPadding="0" width="461" border="0" height="167" bgcolor="#c0c0c0" style="WIDTH: 461px; HEIGHT: 167px">
						<tr>
							<TD height="14" width="12" style="WIDTH: 12px; BORDER-TOP-STYLE: solid; BORDER-LEFT-STYLE: solid; HEIGHT: 14px">&nbsp;</TD>
							<TD height="14" width="326" style="WIDTH: 326px; BORDER-TOP-STYLE: solid; HEIGHT: 14px">&nbsp;</TD>
							<TD height="14" width="2" style="WIDTH: 2px; BORDER-TOP-STYLE: solid; HEIGHT: 14px">&nbsp;</TD>
							<TD height="14" width="468" style="WIDTH: 468px; BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; HEIGHT: 14px">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="29" width="12" style="WIDTH: 12px;  BORDER-LEFT-STYLE: solid;  HEIGHT: 29px">&nbsp;</TD>
							<TD height="29" width="326" style="WIDTH: 326px; HEIGHT: 29px">Order Type:</TD>
							<TD height="29" width="2" style="WIDTH: 2px; HEIGHT: 29px"></TD>
							<TD height="29" width="468" style="WIDTH: 468px; BORDER-RIGHT-STYLE: solid; HEIGHT: 29px"><b>SALE</b></TD>
						</TR>
						<TR>
							<TD height="1" width="12" style="WIDTH: 12px;  BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="326" style="WIDTH: 326px">Terminal Type<FONT color="red">*</FONT>:</TD>
							<TD height="1" width="2" style="WIDTH: 2px">&nbsp;</TD>
							<TD height="1" width="468" style="WIDTH: 468px; BORDER-RIGHT-STYLE: solid"><b>POS</b></TD>
						</TR>
						<TR>
							<TD height="33" width="12" style="WIDTH: 12px;  BORDER-LEFT-STYLE: solid;  HEIGHT: 33px">&nbsp;</TD>
							<TD height="33" width="326" style="WIDTH: 326px; HEIGHT: 33px">Total:</TD>
							<TD height="33" width="2" style="WIDTH: 2px; HEIGHT: 33px">&nbsp;</TD>
							<TD height="33" width="468" style="WIDTH: 468px; BORDER-RIGHT-STYLE: solid; HEIGHT: 33px"><INPUT id="szip3" style="WIDTH: 45px; HEIGHT: 22px" size="6" value="<%=subtotal%>" name="total"></TD>
						</TR>
						<!--
						<tr>
							<TD height="2" width="12" style="WIDTH: 12px; BORDER-LEFT-STYLE: solid; HEIGHT: 2px"></TD>
							<TD height="2" width="326" style="WIDTH: 326px; HEIGHT: 2px"></TD>
							<TD height="2" width="2" style="WIDTH: 2px; HEIGHT: 2px">&nbsp;</TD>
							<TD height="2" width="468" style="WIDTH: 468px; BORDER-RIGHT-STYLE: solid; HEIGHT: 2px">&nbsp;</TD>
						</tr>
						-->
						<TR>
							<TD height="1" width="12" style="WIDTH: 12px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="326" style="WIDTH: 326px">Card Track:</TD>
							<TD height="1" width="2" style="WIDTH: 2px">&nbsp;</TD>
							<TD height="1" width="468" style="WIDTH: 468px; BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=micr%>" name="micr" size="46" style="WIDTH: 313px; HEIGHT: 22px"></TD>
						</TR>
						<TR>
							<TD style="WIDTH: 12px; BORDER-LEFT-STYLE: solid; HEIGHT: 18px; BORDER-BOTTOM-STYLE: solid" width="12" height="18">&nbsp;</TD>
							<TD style="WIDTH: 326px; HEIGHT: 18px; BORDER-BOTTOM-STYLE: solid" width="326" height="18">&nbsp;</TD>
							<TD style="WIDTH: 2px; HEIGHT: 18px; BORDER-BOTTOM-STYLE: solid" width="2" height="18">&nbsp;</TD>
							<TD style="WIDTH: 468px;BORDER-RIGHT-STYLE: solid;HEIGHT: 18px;BORDER-BOTTOM-STYLE: solid" width="468" height="18">&nbsp;</TD>
						</TR>
					</TABLE>
				</center>
			</div>
			<P align="left"><FONT color="red">*</FONT>)Set Terminal Type to POS for an 
				electronic cash register or integrated POS system, STANDALONE for a 
				point-of-sale credit card terminal, UNATTENDED for a self-service station, or 
				UNSPECIFIED for e-commerce or other applications</P>
			<p align="center"><input type="submit" value="Submit" name="Submit">
		</form>
		</P>
	</body>
</HTML>
