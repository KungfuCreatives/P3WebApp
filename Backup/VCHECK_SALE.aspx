<%@ Page language="c#" Codebehind="VCHECK_SALE.aspx.cs" AutoEventWireup="false" Inherits="LinkPointAPI_cs.VCHECK_SALE" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>VCHECK_SALE</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form ACTION="VCHECK_SALE.aspx" METHOD="post" NAME="SaleForm" runat="server" ID="Form1">
			<p align="center"><font size="5"><label><b>VIRTUAL CHECK SALE TRANSACTION </b></label></font>
			</p>
			<p align="center">An Example of a Virtual Check SALE
			</p>
			<TABLE id="TABLE1" cellSpacing="0" cellPadding="0" width="367" border="0" align="left" bgcolor="#c0c0c0" style="WIDTH: 367px; HEIGHT: 311px">
				<TR>
					<TD height="25" width="44" bgcolor="#ffffff">&nbsp;</TD>
					<TD height="25" width="16" style="BORDER-TOP-STYLE: solid; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="25" width="90" style="BORDER-TOP-STYLE: solid"><FONT>Name</FONT>:</TD>
					<TD height="25" width="54" style="BORDER-TOP-STYLE: solid">&nbsp;</TD>
					<TD height="25" width="173" style="BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=bname%>" name="bname"></TD>
				</TR>
				<TR>
					<TD height="25" width="44" bgcolor="#ffffff">&nbsp;</TD>
					<TD height="25" width="16" style="BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="25" width="90">Company:</TD>
					<TD height="25" width="54">&nbsp;</TD>
					<TD height="25" width="173" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=bcompany%>" name="bcompany"></TD>
				</TR>
				<TR>
					<TD height="25" width="44" bgcolor="#ffffff">&nbsp;</TD>
					<TD height="25" width="16" style="BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="25" width="90">Address 1:</TD>
					<TD height="25" width="54">&nbsp;</TD>
					<TD height="25" width="173" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=baddr1%>" name="baddr1"></TD>
				</TR>
				<TR>
					<TD height="26" width="44" bgcolor="#ffffff">&nbsp;</TD>
					<TD height="26" width="16" style="BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="26" width="90">Address 2:</TD>
					<TD height="26" width="54">&nbsp;</TD>
					<TD height="26" width="173" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=baddr2%>" name="baddr2"></TD>
				</TR>
				<TR>
					<TD height="25" width="44" bgcolor="#ffffff">&nbsp;</TD>
					<TD height="25" width="16" style="BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="25" width="90">City:</TD>
					<TD height="25" width="54">&nbsp;</TD>
					<TD height="25" width="173" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=bcity%>" name="bcity"></TD>
				</TR>
				<TR>
					<TD height="24" width="44" bgcolor="#ffffff">&nbsp;
					</TD>
					<TD height="24" width="16" style="BORDER-LEFT-STYLE: solid">&nbsp;
					</TD>
					<TD height="24" width="90">State:
					</TD>
					<TD height="24" width="54">&nbsp;</TD>
					<TD height="24" width="173" style="BORDER-RIGHT-STYLE: solid"><INPUT  style="WIDTH: 30px; HEIGHT: 22px" size="3" value="<%=bstate%>" name="bstate"></TD>
				</TR>
				<TR>
					<TD height="24" width="44" bgcolor="#ffffff">&nbsp;</TD>
					<TD height="24" width="16" style="BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="24" width="90">Zip:</TD>
					<TD height="24" width="54">&nbsp;</TD>
					<TD height="24" width="173" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size="4" value="<%=bzip%>" name="bzip"></TD>
				</TR>
				<tr>
					<TD height="19" width="44" bgcolor="#ffffff">&nbsp;</TD>
					<TD height="19" width="16" style="BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="19" width="90">Country:</TD>
					<TD height="19" width="54">&nbsp;</TD>
					<TD height="19" width="173" style="BORDER-RIGHT-STYLE: solid"><INPUT  style="WIDTH: 28px; HEIGHT: 22px" size="2" value="<%=bcountry%>" name="bcountry"></TD>
				</tr>
				<tr>
					<TD height="1" width="44" bgcolor="#ffffff">&nbsp;</TD>
					<TD height="1" width="16" style="BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="1" width="78">e-mail:</TD>
					<TD height="1" width="7">&nbsp;</TD>
					<TD height="1" width="56" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=bemail%>" name="bemail"></TD>
				</tr>
				<tr>
					<TD height="25" width="44" bgcolor="#ffffff">&nbsp;</TD>
					<TD height="25" width="16" style="BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="25" width="78">Phone:</TD>
					<TD height="25" width="7">&nbsp;</TD>
					<TD height="25" width="56" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=bphone%>" name="bphone" size="20"></TD>
				</tr>
				<tr>
					<TD height="40" width="44" bgcolor="#ffffff" style="HEIGHT: 40px">&nbsp;</TD>
					<TD height="40" width="16" style="BORDER-LEFT-STYLE: solid; HEIGHT: 40px; BORDER-BOTTOM-STYLE: solid">&nbsp;</TD>
					<TD height="40" width="78" style="HEIGHT: 40px; BORDER-BOTTOM-STYLE: solid">Fax:</TD>
					<TD height="40" width="7" style="HEIGHT: 40px; BORDER-BOTTOM-STYLE: solid">&nbsp;</TD>
					<TD height="40" width="56" style="BORDER-RIGHT-STYLE: solid; HEIGHT: 40px; BORDER-BOTTOM-STYLE: solid"><INPUT  value="<%=bfax%>" name="bfax" size="20"></TD>
				</tr>
			</TABLE>
			<TABLE id="TABLE2" cellSpacing="0" cellPadding="0" width="353" border="0" align="left" height="290" bgcolor="#c0c0c0" style="WIDTH: 353px; HEIGHT: 290px">
				<TR>
					<TD height="24" width="13" bgcolor="#ffffff" style="WIDTH: 13px; HEIGHT: 24px">&nbsp;</TD>
					<TD height="24" width="19" style="BORDER-TOP-STYLE: solid; BORDER-LEFT-STYLE: solid; HEIGHT: 24px">&nbsp;</TD>
					<TD height="24" width="276" style="BORDER-TOP-STYLE: solid; HEIGHT: 24px">Total:</TD>
					<TD height="24" width="44" style="BORDER-TOP-STYLE: solid; HEIGHT: 24px">&nbsp;</TD>
					<TD height="24" width="78" style="BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid; HEIGHT: 24px"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size="4" value="<%=subtotal%>" name="total"></TD>
				</TR>
				<TR>
					<TD height="19" width="13" bgcolor="#ffffff" style="WIDTH: 13px; HEIGHT: 19px">&nbsp;</TD>
					<TD height="19" width="19" style="BORDER-LEFT-STYLE: solid; HEIGHT: 19px">&nbsp;</TD>
					<TD height="19" width="294" style="HEIGHT: 19px">&nbsp;</TD>
					<TD height="19" width="13" style="HEIGHT: 19px">&nbsp;</TD>
					<TD height="19" width="151" style="BORDER-RIGHT-STYLE: solid; HEIGHT: 19px">&nbsp;</TD>
				</TR>
				<TR>
					<TD height="1" width="13" bgcolor="#ffffff" style="WIDTH: 13px">&nbsp;</TD>
					<TD height="1" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="1" width="294">Transit Routing:</TD>
					<TD height="1" width="13">&nbsp;</TD>
					<TD height="1" width="151" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 128px; HEIGHT: 22px" size="10" name="routeNbr" value="<%=routeNbr%>"></TD>
				</TR>
				<TR>
					<TD height="1" width="13" bgcolor="#ffffff" style="WIDTH: 13px">&nbsp;</TD>
					<TD height="1" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="1" width="294">Account Number:</TD>
					<TD height="1" width="13">&nbsp;</TD>
					<TD height="1" width="151" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 128px; HEIGHT: 22px" size="10" name="accountNbr" value="<%=accountNbr%>"></TD>
				</TR>
				<TR>
					<TD height="1" width="13" bgcolor="#ffffff" style="WIDTH: 13px">&nbsp;</TD>
					<TD height="1" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="1" width="294">Check Number (optional):</TD>
					<TD height="1" width="13">&nbsp;</TD>
					<TD height="1" width="151" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 128px; HEIGHT: 22px" size="10" name="checkNbr" value="<%=checkNbr%>"></TD>
				</TR>
				<TR>
					<TD height="1" width="13" bgcolor="#ffffff" style="WIDTH: 13px">&nbsp;</TD>
					<TD height="1" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="1" width="294">Account Type (pc/bc):</TD>
					<TD height="1" width="13">&nbsp;</TD>
					<TD height="1" width="151" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 128px; HEIGHT: 22px" size="10" name="accttype" value="<%=accttype%>"></TD>
				</TR>
				<TR>
					<TD height="1" width="13" bgcolor="#ffffff" style="WIDTH: 13px">&nbsp;</TD>
					<TD height="1" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="1" width="294">Bank Name :</TD>
					<TD height="1" width="13">&nbsp;</TD>
					<TD height="1" width="151" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 128px; HEIGHT: 22px" size="10" name="bankName" value="<%=bankName%>"></TD>
				</TR>
				<TR>
					<TD height="1" width="13" bgcolor="#ffffff" style="WIDTH: 13px">&nbsp;</TD>
					<TD height="1" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="1" width="294">Bank State :</TD>
					<TD height="1" width="13">&nbsp;</TD>
					<TD height="1" width="151" style="BORDER-RIGHT-STYLE: solid"><INPUT  style="WIDTH: 28px; HEIGHT: 22px" size="2" name="bankState" value="<%=bankState%>"></TD>
				</TR>
				<tr>
					<TD height="1" width="13" bgcolor="#ffffff" style="WIDTH: 13px">&nbsp;</TD>
					<TD height="1" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="1" width="294">SSN (optional) :</TD>
					<TD height="1" width="13">&nbsp;</TD>
					<TD height="1" width="151" style="BORDER-RIGHT-STYLE: solid"><INPUT  style="WIDTH: 128px; HEIGHT: 22px" size="10" name="ssn" value="<%=ssn%>"></TD>
				</tr>
				<TR>
					<TD height="21" width="13" bgcolor="#ffffff" style="WIDTH: 13px">&nbsp;</TD>
					<TD height="21" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</TD>
					<TD height="21" width="294">Driver License :</TD>
					<TD height="21" width="13">&nbsp;</TD>
					<TD height="21" width="151" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 128px; HEIGHT: 22px" size="10" name="dl" value="<%=dl%>"></TD>
				</TR>
				<TR>
					<TD height="29" width="13" bgcolor="#ffffff" style="WIDTH: 13px; HEIGHT: 29px">&nbsp;</TD>
					<TD height="29" width="19" style="BORDER-LEFT-STYLE: solid; HEIGHT: 29px">&nbsp;</TD>
					<TD height="29" width="294" style="HEIGHT: 29px">DL State :</TD>
					<TD height="29" width="7" style="HEIGHT: 29px">&nbsp;</TD>
					<TD height="29" width="151" style="BORDER-RIGHT-STYLE: solid; HEIGHT: 29px"><INPUT id="startdate" style="WIDTH: 28px; HEIGHT: 19px" size="1" name="dlState" value="<%=dlState%>"></TD>
				</TR>
				<tr>
					<TD colspan="5" align="middle" bgcolor="#ffffff">&nbsp;</TD>
				</tr>
				<tr>
					<TD colspan="5" align="middle" bgcolor="#ffffff" style="HEIGHT: 7px"><INPUT name='Submit' type="submit" value='Submit'></TD>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
