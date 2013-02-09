<%@ Page language="c#" Codebehind="SALE_MAXINFO.aspx.cs" AutoEventWireup="false" Inherits="LinkPointAPI_cs.SALE_MAXINFO" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>SALE_MAXINFO</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form ACTION="SALE_MAXINFO.aspx" method="post" runat="server">
			<p align="center"><b><font size="5">&nbsp;SALE TRANSACTION</font></b><br>
			</p>
			<p align="center">An Example Credit Card SALE with all commonly used fields 
				included</p>
			<div align="center">
				<center>
					<TABLE id="TABLE1" cellSpacing="0" cellPadding="0" width="356" border="0" height="238" bgcolor="#c0c0c0" style="WIDTH: 356px; HEIGHT: 238px">
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
							<TD height="1" width="276">Result:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">
								<select name="result" size="1">
									<option value="LIVE" selected>LIVE</option>
									<option value="GOOD">GOOD</option>
									<option value="GOOD">DECLINE</option>
									<option value="GOOD">DUPLICATE</option>
								</select></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px;  BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Origin:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">
								<select name="origin" size="1">
									<option value="MOTO" selected>MOTO</option>
									<option value="RETAIL">RETAIL</option>
									<option value="ECI">ECI</option>
								</select></TD>
						</TR>
						<tr>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276"><b>Payment:</b></TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px;  BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Subtotal:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size="6" value="12.99" name="subtotal"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px;  BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Tax:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size="6" value="0.32" name="tax"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px;  BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Shipping:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size="6" value="1.02" name="shipping"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px;  BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Total:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size="6" value="14.33" name="total"></TD>
						</TR>
						<tr>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276"><b>Credit Card:</b></TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">Card Number:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=cardnumber%>" name="cardnumber" size="17"></TD>
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
							<TD height="1" width="276">CVM:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT  style="WIDTH: 45px; HEIGHT: 22px" size="4" value="<%=cvmvalue%>" name="cvmvalue"></TD>
						</TR>
						<tr>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276"><b>Billing:</b></TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">Name:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=bname%>" name="bname" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">Company:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=bcompany%>" name="bcompany" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">Address 1:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=baddr1%>" name="baddr1" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">Address 2:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=baddr2%>" name="baddr2" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">City:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=bcity%>" name="bcity" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">State:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=bstate%>" name="bstate" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">Country:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=bcountry%>" name="bcountry" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">Phone:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=bphone%>" name="bphone" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">Email:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=bemail%>" name="bemail" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Address Numbers:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT  style="WIDTH: 45px; HEIGHT: 22px" size="4" value="<%=baddrnum%>" name="baddrnum"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Zip</FONT>:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT  style="WIDTH: 45px; HEIGHT: 22px" size="4" value="<%=bzip%>" name="bzip"></TD>
						</TR>
						<tr>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276"><b>Shipping:</b></TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">Name:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=sname%>" name="sname" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">Address 1:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=saddr1%>" name="saddr1" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">Address 2:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=saddr2%>" name="saddr2" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">City:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=scity%>" name="scity" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">Zip:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=szip%>" name="szip" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">State:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=sstate%>" name="sstate" size="17"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="144">Country:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="199" style="BORDER-RIGHT-STYLE: solid"><INPUT  value="<%=scountry%>" name="scountry" size="17"></TD>
						</TR>
						<!--
						<tr>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">&nbsp;</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr> -->
						<tr>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276"><b>ITEM:</b></TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">ID:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 145px; HEIGHT: 22px" size="14" value="123456-A98767" name="id2"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Description:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 145px; HEIGHT: 22px" size="14" value="Logo T-Shirt" name="desc2"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px;  BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Price:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size="6" value="12.99" name="price2"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px;  BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Quantity:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size="6" value="1" name="qty2"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Serial:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 145px; HEIGHT: 22px" size="14" value="0987654322" name="serial2"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Color:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">
								<select name="Color" size="1">
									<option value="Red" selected>Red</option>
									<option value="Blue">Blue</option>
								</select></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Size:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">
								<select name="Size" size="1">
									<option value="M">Medium</option>
									<option value="L">Large</option>
									<option value="XL" selected>XLarge</option>
								</select></TD>
						</TR>
						<tr>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276"><b>Notes:</b></TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Comments:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 145px; HEIGHT: 22px" size="14" value="<%=comments%>" name="comments"></TD>
						</TR>
						<TR>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">Referred:</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid"><INPUT style="WIDTH: 145px; HEIGHT: 22px" size="14" value="<%=referred%>" name="referred"></TD>
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
			<p align="center"><input type="submit" value="Submit" name="Submit">
		</form>
		</P>
	</body>
</HTML>
