<%@ Page language="c#" Codebehind="LINKSHIELD_PREAUTH_POSTAUTH.aspx.cs" AutoEventWireup="false" Inherits="LinkPointAPI_cs.LINKSHIELD_PREAUTH_POSTAUTH" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>LINKSHIELD_SALE_VOID</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" action="LINKSHIELD_PREAUTH_POSTAUTH.aspx" method="post" runat="server">
			<p align="center"><b><font size="4">&nbsp;LinkShield PREAUTH/POSTAUTH TRANSACTION</font></b></p>
			<p align="center">An Example Credit Card Preauth/Postauth with score rating 
				(LinkShield). This sample first performs a credit card PREAUTH,then checks the 
				LinkShield risk score. If the score is less then given threshold then we 
				perform POSTAUTH transaction
			</p>
			<FONT color="red">*</FONT>)Replace the value for <b>MaxScore</b> with a value 
			appropriate for your business risk level.
			<div align="center">
				<TABLE id="TABLE1" style="WIDTH: 356px; HEIGHT: 238px" height="238" cellSpacing="0" cellPadding="0" width="356" bgColor="#c0c0c0" border="0">
					<tr>
						<TD style="WIDTH: 103px; BORDER-TOP-STYLE: solid; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD style="BORDER-TOP-STYLE: solid" width="276" height="1">&nbsp;</TD>
						<TD style="WIDTH: 15px; BORDER-TOP-STYLE: solid" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-TOP-STYLE: solid; BORDER-RIGHT-STYLE: solid" width="78" height="1">&nbsp;</TD>
					</tr>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid; HEIGHT: 17px" width="103" height="17">&nbsp;</TD>
						<TD style="HEIGHT: 17px" width="276" height="17">Subtotal:</TD>
						<TD style="WIDTH: 15px; HEIGHT: 17px" width="15" height="17">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid; HEIGHT: 17px" width="78" height="17"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size="6" value="12.99" name="subtotal"></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid; HEIGHT: 18px" width="103" height="18">&nbsp;</TD>
						<TD style="HEIGHT: 18px" width="276" height="18">Tax:</TD>
						<TD style="WIDTH: 15px; HEIGHT: 18px" width="15" height="18">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid; HEIGHT: 18px" width="78" height="18"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size="6" value="0.32" name="tax"></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid; HEIGHT: 11px" width="103" height="11">&nbsp;</TD>
						<TD style="HEIGHT: 11px" width="276" height="11">Shipping:</TD>
						<TD style="WIDTH: 15px; HEIGHT: 11px" width="15" height="11">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid; HEIGHT: 11px" width="78" height="11"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size="6" value="1.02" name="shipping"></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid; HEIGHT: 2px" width="103" height="2">&nbsp;</TD>
						<TD style="HEIGHT: 2px" width="276" height="2">Total:</TD>
						<TD style="WIDTH: 15px; HEIGHT: 2px" width="15" height="2">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid; HEIGHT: 2px" width="78" height="2"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size="6" value="14.33" name="total"></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid; HEIGHT: 23px" width="103" height="23">&nbsp;</TD>
						<TD style="HEIGHT: 23px" width="276" height="23"><b>MaxScore <FONT color="red">*</FONT> 
								:</b></TD>
						<TD style="WIDTH: 15px; HEIGHT: 23px" width="15" height="23">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid; HEIGHT: 23px" width="78" height="23"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size=6 
      value="<%=score%>" name=score></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">Card Number:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=cardnumber%>" 
      name=cardnumber></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1">Exp. Month:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1"><select id="expmonth" size="1" name="expmonth">
								<%WriteMonthOpts();%>
							</select></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1">Exp. Year:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1"><select id="expyear" size="1" name="expyear">
								<%WriteYearOpts();%>
							</select></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1">CVM:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size=4 
      value="<%=cvmvalue%>" name=cvmvalue></TD>
					</TR>
					<tr>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1"><b>Billing:</b></TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1">&nbsp;</TD>
					</tr>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">Name:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=bname%>" name=bname 
      ></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">Company:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=bcompany%>" name=bcompany 
      ></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">Address 1:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=baddr1%>" name=baddr1 
      ></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">Address 2:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=baddr2%>" name=baddr2 
      ></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">City:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=bcity%>" name=bcity 
      ></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">State:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=bstate%>" name=bstate 
      ></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">Country:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=bcountry%>" name=bcountry 
      ></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">Phone:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=bphone%>" name=bphone 
      ></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">Email:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=bemail%>" name=bemail 
      ></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1">Address Numbers:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size=4 
      value="<%=baddrnum%>" name=baddrnum></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1">Zip</FONT>:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size=4 
      value="<%=bzip%>" name=bzip></TD>
					</TR>
					<tr>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1"><b>Shipping:</b></TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1">&nbsp;</TD>
					</tr>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">Name:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=sname%>" name=sname 
      ></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">Address 1:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=saddr1%>" name=saddr1 
      ></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">Address 2:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=saddr2%>" name=saddr2 
      ></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">City:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=scity%>" name=scity 
      ></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">Zip:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=szip%>" name=szip 
      ></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">State:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=sstate%>" name=sstate 
      ></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="144" height="1">Country:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="199" height="1"><INPUT size=17 value="<%=scountry%>" name=scountry 
      ></TD>
					</TR>
					<!--
						<tr>
							<TD height="1" width="103" style="WIDTH: 103px; BORDER-LEFT-STYLE: solid">&nbsp;</TD>
							<TD height="1" width="276">&nbsp;</TD>
							<TD height="1" width="115" style="WIDTH: 115px">&nbsp;</TD>
							<TD height="1" width="78" style="BORDER-RIGHT-STYLE: solid">&nbsp;</TD>
						</tr> -->
					<tr>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1"><b>ITEM:</b></TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1">&nbsp;</TD>
					</tr>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1">ID:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1"><INPUT style="WIDTH: 145px; HEIGHT: 22px" size="14" value="123456-A98767" name="id2"></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1">Description:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1"><INPUT style="WIDTH: 145px; HEIGHT: 22px" size="14" value="Logo T-Shirt" name="desc2"></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1">Price:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size="6" value="12.99" name="price2"></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1">Quantity:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1"><INPUT style="WIDTH: 45px; HEIGHT: 22px" size="6" value="1" name="qty2"></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1">Serial:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1"><INPUT style="WIDTH: 145px; HEIGHT: 22px" size="14" value="0987654322" name="serial2"></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1">Color:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1"><select size="1" name="Color">
								<option value="Red" selected>Red</option>
								<option value="Blue">Blue</option>
							</select></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1">Size:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1"><select size="1" name="Size">
								<option value="M">Medium</option>
								<option value="L">Large</option>
								<option value="XL" selected>XLarge</option>
							</select></TD>
					</TR>
					<tr>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1"><b>Notes:</b></TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1">&nbsp;</TD>
					</tr>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1">Comments:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1"><INPUT style="WIDTH: 145px; HEIGHT: 22px" size=14 
      value="<%=comments%>" name=comments></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 103px; BORDER-LEFT-STYLE: solid" width="103" height="1">&nbsp;</TD>
						<TD width="276" height="1">Referred:</TD>
						<TD style="WIDTH: 15px" width="15" height="1">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid" width="78" height="1"><INPUT style="WIDTH: 145px; HEIGHT: 22px" size=14 
      value="<%=referred%>" name=referred></TD>
					</TR>
					<TR>
						<TD style="BORDER-LEFT-STYLE: solid; BORDER-BOTTOM-STYLE: solid" width="103" height="10">&nbsp;</TD>
						<TD style="BORDER-BOTTOM-STYLE: solid" width="276" height="10">&nbsp;</TD>
						<TD style="WIDTH: 15px; BORDER-BOTTOM-STYLE: solid" width="15" height="10">&nbsp;</TD>
						<TD style="BORDER-RIGHT-STYLE: solid; BORDER-BOTTOM-STYLE: solid" width="78" height="10">&nbsp;</TD>
					</TR>
				</TABLE>
			</div>
			<p align="center"><input type="submit" value="Submit" name="Submit">
		</form>
		</P>
	</body>
</HTML>
