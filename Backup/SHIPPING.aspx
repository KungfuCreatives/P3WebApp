<%@ Page language="c#" Codebehind="SHIPPING.aspx.cs" AutoEventWireup="false" Inherits="LinkPointAPI_cs.SHIPPING" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>SHIPPING</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form ACTION="SHIPPING.aspx" METHOD="post" NAME="SaleForm" runat="server" ID="Form1">
			<p align="center"><font size="5"><b>CALCULATE SHIPPING</b></font></p>
			<p align="center">
				Calculate shipping for a dollar amount based upon ship weight, carrier, and 
				other factors passed to the function.</p>
			<div align="center">
				<center>
					<table id="TABLE1" cellSpacing="0" cellPadding="0" width="318" border="0" height="29" bgcolor="#c0c0c0">
						<tr>
							<td height="1" width="19" style="BORDER-TOP-STYLE: solid; BORDER-LEFT-STYLE: solid">&nbsp;</td>
							<td height="24" width="90" style="BORDER-TOP-STYLE: solid">Ship State:</td>
							<td height="1" width="44" style="BORDER-TOP-STYLE: solid">&nbsp;</td>
							<td height="1" width="78" style="BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid"><input id="bstate0" style="WIDTH: 30px; HEIGHT: 22px" size="3" value="<%=sstate%>" name="sstate"></td>
						</tr>
						<tr>
							<td height="1" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</td>
							<td height="24" width="90">Ship Zip:</td>
							<td height="1" width="44">&nbsp;</td>
							<td height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><input id="bzip1" style="WIDTH: 45px; HEIGHT: 22px" size="4" value="<%=szip%>" name="szip"></td>
						</tr>
						<tr>
							<td height="1" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</td>
							<td height="19" width="90">Ship Country:</td>
							<td height="1" width="44">&nbsp;</td>
							<td height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><input id="bzip2" style="WIDTH: 28px; HEIGHT: 22px" size="2" value="<%=scountry%>" name="scountry"></td>
						</tr>
						<tr>
							<td height="1" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</td>
							<td height="1" width="276">Ship Carrier:</td>
							<td height="1" width="44">&nbsp;</td>
							<td height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><input  style="WIDTH: 28px; HEIGHT: 22px" size="1" value="<%=scarrier%>" name="scarrier"></td>
						</tr>
						<tr>
							<td height="1" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</td>
							<td height="1" width="276">Items:</td>
							<td height="1" width="44">&nbsp;</td>
							<td height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><input  style="WIDTH: 28px; HEIGHT: 22px" size="1" value="<%=sitems%>" name="sitems"></td>
						</tr>						
						<tr>
							<td height="1" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</td>
							<td height="1" width="276">Weight:</td>
							<td height="1" width="44">&nbsp;</td>
							<td height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><input  style="WIDTH: 28px; HEIGHT: 22px" size="1" value="<%=sweight%>" name="sweight"></td>
						</tr>						
						<tr>
							<td height="1" width="19" style="BORDER-LEFT-STYLE: solid">&nbsp;</td>
							<td height="1" width="276">&nbsp;</td>
							<td height="1" width="44">&nbsp;</td>
							<td height="1" width="78" style="BORDER-RIGHT-STYLE: solid">&nbsp;</td>
						</tr>
						<tr>
							<td height="1" width="19" style="BORDER-LEFT-STYLE: solid; BORDER-BOTTOM-STYLE: solid">&nbsp;</td>
							<td height="1" width="276" style="BORDER-BOTTOM-STYLE: solid">Total:</td>
							<td height="1" width="44" style="BORDER-BOTTOM-STYLE: solid">&nbsp;</td>
							<td height="1" width="78" style="BORDER-RIGHT-STYLE: solid; BORDER-BOTTOM-STYLE: solid"><input id="szip1" style="WIDTH: 45px; HEIGHT: 22px" size="4" value="<%=stotal%>" name="stotal"></td>
						</tr>
					</table>
				</center>
			</div>
			<p align="center"><input id="submit" name="Submit" type="submit" value="Submit">
			</p>
			<p align="center"><b> NOTE:</b> For Calculate Shipping to work properly, the 
				merchant account must be configured with a shipping file. For instructions, 
				contact LinkPoint technical support .
			</p>
		</form>
	</body>
</HTML>
