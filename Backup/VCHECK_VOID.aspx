<%@ Page language="c#" Codebehind="VCHECK_VOID.aspx.cs" AutoEventWireup="false" Inherits="LinkPointAPI_cs.VCHECK_VOID" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>VCHECK_VOID</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form ACTION="VCHECK_VOID.aspx" METHOD="post" NAME="SaleForm" runat="server" ID="Form1">
			<p align="center"><font size="5"><b>VIRTUAL CHECK VOID TRANSACTION </b></font>
			</p>
			<p align="center">An Example of a Virtual Check VOID</p>
			<TABLE id="TABLE2" align="center" cellSpacing="0" cellPadding="0" width="313" border="0" height="159" bgcolor="#c0c0c0" style="WIDTH: 313px; HEIGHT: 159px">
				<TR>
					<TD height="24" width="19" style="BORDER-TOP-STYLE: solid; BORDER-LEFT-STYLE: solid; HEIGHT: 24px">&nbsp;</TD>
					<TD height="24" width="276" style="BORDER-TOP-STYLE: solid; HEIGHT: 24px">&nbsp;</TD>
					<TD height="24" width="44" style="BORDER-TOP-STYLE: solid; HEIGHT: 24px">&nbsp;</TD>
					<TD height="24" width="78" style="BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; HEIGHT: 24px">&nbsp;</TD>
				</TR>
				<TR>
					<TD height="24" width="19" style="BORDER-LEFT-STYLE: solid; HEIGHT: 24px">&nbsp;</TD>
					<TD height="24" width="276" style="HEIGHT: 24px">Total:</TD>
					<TD height="24" width="44" style="HEIGHT: 24px">&nbsp;</TD>
					<TD height="24" width="78" style="BORDER-RIGHT-STYLE: solid; HEIGHT: 24px"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size="4" value="<%=subtotal%>" name="total"></TD>
				</TR>
				<TR>
					<TD height="19" width="19" style="BORDER-LEFT-STYLE: solid; HEIGHT: 19px">&nbsp;</TD>
					<TD height="19" width="294" style="HEIGHT: 19px">&nbsp;</TD>
					<TD height="19" width="13" style="HEIGHT: 19px">&nbsp;</TD>
					<TD height="19" width="151" style="BORDER-RIGHT-STYLE: solid; HEIGHT: 19px">&nbsp;</TD>
				</TR>
				<TR>
					<TD height="36" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid; HEIGHT: 36px">&nbsp;</TD>
					<TD height="36" width="110" style="WIDTH: 110px; HEIGHT: 36px">Order ID&nbsp;<FONT color="red">*</FONT>
						:</TD>
					<TD height="36" width="9" style="WIDTH: 9px; HEIGHT: 36px"></TD>
					<TD height="36" width="78" style="BORDER-RIGHT-STYLE: solid; HEIGHT: 36px"><INPUT  style="WIDTH: 150px; HEIGHT: 22px" size="60" value="<%=oid%>" name="oid">&nbsp;</TD>
				</TR>
				<TR>
					<TD style="BORDER-LEFT-STYLE: solid; BORDER-BOTTOM-STYLE: solid" width="103" height="10">&nbsp;</TD>
					<TD style="WIDTH: 110px; BORDER-BOTTOM-STYLE: solid" width="110" height="10">&nbsp;</TD>
					<TD style="WIDTH: 9px; BORDER-BOTTOM-STYLE: solid" width="9" height="10">&nbsp;</TD>
					<TD style="BORDER-RIGHT-STYLE: solid;BORDER-BOTTOM-STYLE: solid" width="78" height="10">&nbsp;</TD>
				</TR>
			</TABLE>
			<P align="left"><FONT color="red">*</FONT>) The 'Order ID' field must be a valid 
				order ID from a prior Virtual Check Sale</P>
			<p align="center"><input type="submit" value="Submit" name="Submit">
		</form>
		<br>
		</P>
		<DIV style="Z-INDEX: 101; LEFT: 7px; WIDTH: 533px; POSITION: absolute; TOP: 442px; HEIGHT: 19px" ms_positioning="FlowLayout">
			<P align="left"><FONT color="red">*</FONT>) The 'Order ID' field must be a valid 
				order ID from a prior Virtual Check Sale
			</P>
		</DIV>
	</body>
</HTML>
