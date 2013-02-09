<%@ Page language="c#" Codebehind="TAX.aspx.cs" AutoEventWireup="false" Inherits="LinkPointAPI_cs.TAX" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>TAX</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form ACTION="TAX.asp" METHOD="post" NAME="SaleForm" runat="server" ID="Form1">
			<p align="center"><font size="5"><b>CALCULATE TAX</b></font></p>
			<p align="center">
				Calculate sales tax for a dollar amount based upon a sales tax table set up in 
				the merchant account. The sales tax table will<br>
				base the sales tax computations upon the Zip Code passed ('Tax Zip') .<br>
				&nbsp;&nbsp;&nbsp;&nbsp;</p>
			<div align="center">
				<center>
					<table id="TABLE1" cellSpacing="0" cellPadding="0" width="318" border="0" height="26" bgcolor="#c0c0c0">
						<tr>
							<td height="10" width="19" style="BORDER-TOP-STYLE: solid; BORDER-LEFT-STYLE: solid">&nbsp;</td>
							<td height="10" width="276" style="BORDER-TOP-STYLE: solid">&nbsp;</td>
							<td height="10" width="44" style="BORDER-TOP-STYLE: solid">&nbsp;</td>
							<td height="10" width="78" style="BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid">&nbsp;</td>
						</tr>
						<tr>
							<td height="1" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</td>
							<td height="24" width="90">Tax State:</td>
							<td height="1" width="44">&nbsp;</td>
							<td height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><input  style="WIDTH: 30px; HEIGHT: 22px" size="3" value="<%=sstate%>" name="sstate"></td>
						</tr>
						<tr>
							<td height="1" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</td>
							<td height="24" width="90">Tax Zip:</td>
							<td height="1" width="44">&nbsp;</td>
							<td height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><input  style="WIDTH: 45px; HEIGHT: 22px" size="4" value="<%=szip%>" name="szip"></td>
						</tr>
						<tr>
							<td height="1" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</td>
							<td height="1" width="276">Subtotal:</td>
							<td height="1" width="44">&nbsp;</td>
							<td height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><input  style="WIDTH: 45px; HEIGHT: 22px" size="4" value="<%=stotal%>" name="stotal"></td>
						</tr>
						<tr>
							<td height="10" width="19" style="BORDER-LEFT-STYLE: solid; BORDER-BOTTOM-STYLE: solid">&nbsp;</td>
							<td height="10" width="276" style="BORDER-BOTTOM-STYLE: solid">&nbsp;</td>
							<td height="10" width="44" style="BORDER-BOTTOM-STYLE: solid">&nbsp;</td>
							<td height="10" width="78" style="BORDER-RIGHT-STYLE: solid; BORDER-BOTTOM-STYLE: solid">&nbsp;</td>
						</tr>
					</table>
				</center>
			</div>
			<!-- <pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</pre> -->
			<p align="center"><input id="submit" name="Submit" type="submit" value="Submit"></p>
			<p align="center"><b>NOTE</b>: For Calculate Tax to work properly, the merchant 
				account must be configured with a "TAX LINE". For instructions, contact 
				LinkPoint technical support.
			</p>
		</form>
	</body>
</HTML>
