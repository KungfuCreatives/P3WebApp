<%@ Page Language="C#" AutoEventWireup="true" Inherits="checkout" Codebehind="checkout.aspx.cs" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ContentPlaceHolderID=MetaContent ID="contentMeta">
<META NAME="description" CONTENT="PMP Certification Courses with a 98% SUCCESS RATE! Take Your Career To The Next Level with a Project Management Certification! Our Project Management Exam Training is The Best PMP Training Company Available. Check Us Out!">
<META NAME="keywords" CONTENT="PMP Certification, Project Management Certification, PMP Exam, PMP Courses, PMP Training, Project Management Training, Project Management Courses">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
                <h1 class="pPadH1">Pay for Your Pinnacle 3 Learning Class</h1>
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server">
                        <table cellpadding="2" cellspacing="0" border="0" class="pPad">
                            <tr>
                                <td colspan="2">
                                    <h4>
                                        Contact Information</h4>
                                    <font color="red"><b>** All Fields Are Required **</b></font>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    First Name:
                                </td>
                                <td>
                                    <asp:TextBox ID="billTo_firstName" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="billTo_firstName"
                                        Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Last Name:
                                </td>
                                <td>
                                    <asp:TextBox ID="billTo_lastName" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="billTo_lastName"
                                        Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Address:
                                </td>
                                <td>
                                    <asp:TextBox ID="billTo_street1" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="billTo_street1"
                                        Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    City:
                                </td>
                                <td>
                                    <asp:TextBox ID="billTo_city" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="billTo_city"
                                        Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    State/Province:
                                </td>
                                <td>
                                    <asp:TextBox ID="billTo_state" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="billTo_state"
                                        Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Postal Code:
                                </td>
                                <td>
                                    <asp:TextBox ID="billTo_postalCode" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="billTo_postalCode"
                                        Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Country:
                                </td>
                                <td>
                                    <asp:TextBox ID="billTo_country" ReadOnly="true" Text="USA" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Email Address:
                                </td>
                                <td>
                                    <asp:TextBox ID="billTo_email" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="billTo_email"
                                        Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="billTo_email"
                                        Display="Dynamic" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Phone Number
                                </td>
                                <td>
                                    <asp:TextBox ID="billTo_phoneNumber" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="billTo_firstName"
                                        Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <%--<tr>
		                        <td colspan="2"><h4>Payment Information</h4></td>
		                    </tr>
		                    <tr>
		                        <td align="right">Number of Students:</td>
		                        <td><b><% Response.Write(Session["studentNum"].ToString()); %></b></td>
		                    </tr>
    		                
		                    <tr>
		                        <td align="right">Total Cost:</td>
		                        <td><b><% Response.Write("$" + Session["amountToCharge"]); %></b></td>
		                    </tr>
			                <tr>
			                    <td align="right">Card Type:</td>
			                    <td align="left">
                                    <asp:DropDownList ID="cardType" runat="server">
                                        <asp:ListItem Value="Visa">Visa</asp:ListItem>
                                        <asp:ListItem Value="Mastercard">Mastercard</asp:ListItem>
                                        <asp:ListItem Value="American Express">American Express</asp:ListItem>
                                        <asp:ListItem Value="Discover">Discover</asp:ListItem>
                                    </asp:DropDownList>
    			                    
				                </td>
			                </tr>
			                <tr>
			                    <td align="right">Card Number: </td>
			                    <td align="left"><asp:Textbox ID="card_accountNumber" runat="server" /></td>		
			                </tr>                   
			                <tr>
    			                <td colspan="2">
    			                    Expiration Month / Year: &nbsp;&nbsp;
    			                    <asp:DropDownList ID="ccMonth" runat="server">
                                        <asp:ListItem Value="01">01</asp:ListItem>
                                        <asp:ListItem Value="02">02</asp:ListItem>
                                        <asp:ListItem Value="03">03</asp:ListItem>
                                        <asp:ListItem Value="04">04</asp:ListItem>
                                        <asp:ListItem Value="05">05</asp:ListItem>
                                        <asp:ListItem Value="06">06</asp:ListItem>
                                        <asp:ListItem Value="07">07</asp:ListItem>
                                        <asp:ListItem Value="08">08</asp:ListItem>
                                        <asp:ListItem Value="09">09</asp:ListItem>
                                        <asp:ListItem Value="10">10</asp:ListItem>
                                        <asp:ListItem Value="11">11</asp:ListItem>
                                        <asp:ListItem Value="12">12</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="ccYear" runat="server">
                                        <asp:ListItem Value="10">10</asp:ListItem>
                                        <asp:ListItem Value="11">11</asp:ListItem>
                                        <asp:ListItem Value="12">12</asp:ListItem>
                                        <asp:ListItem Value="10">13</asp:ListItem>
                                        <asp:ListItem Value="11">14</asp:ListItem>
                                        <asp:ListItem Value="12">15</asp:ListItem>
                                    </asp:DropDownList>
    			                </td>   
			                </tr>
			                <tr>
			                    <td colspan="2">CVN Number:<asp:TextBox ID="ccCVN" runat="server"></asp:TextBox></td>
			                </tr>          --%>
                            <tr>
                                <td colspan="2">
                                    <h4>
                                        Additional Information</h4>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" align="right" class="label">
                                    Comments:
                                </td>
                                <td>
                                    <asp:TextBox ID="billto_comments" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="label" align="right">
                                    Amount:
                                </td>
                                <td>
                                    <asp:Label ID="lblPrice" CssClass="label" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="label" align="right">
                                    Class Location:
                                </td>
                                <td>
                                    <asp:Label ID="lblClassLocation" CssClass="label" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="label" align="right">
                                    Class Date:
                                </td>
                                <td>
                                    <asp:Label ID="lblClassDate" CssClass="label" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="label" align="right">
                                    Payment Method:
                                </td>
                                <td>
                                    <asp:DropDownList ID="drpPaymentMethod" runat="server">
                                        <asp:ListItem Text="--select--" Value="0" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="American Express" Value="American Express"></asp:ListItem>
                                        <asp:ListItem Text="Discover" Value="Discover"></asp:ListItem>
                                        <asp:ListItem Text="Mastercard" Value="Mastercard"></asp:ListItem>
                                        <asp:ListItem Text="Visa" Value="Visa"></asp:ListItem>
                                        <asp:ListItem Text="Check" Value="Check"></asp:ListItem>
                                        <asp:ListItem Text="Purchase Order" Value="Purchase Order"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvPaymentmethod" runat="server" ErrorMessage="Please select Payment Method"
                                        InitialValue="0" ControlToValidate="drpPaymentMethod" Display="Dynamic"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="btnEnroll" runat="server" Text="Enroll" OnClick="btnEnroll_Click" />
                                </td>
                            </tr>
                            <tr style="display: none">
                                <td colspan="2" align="center">
                                    <%--<asp:Button ID="payForClass" runat="server" Text="Pay for Class" OnClick="payForClass_Click" />--%>
                                    <%--<cc1:GCheckoutButton ID="GCheckoutButton1" runat="server" OnClick="PostCartToGoogle" />
                                    <br />
                                    &nbsp;<br />
                                    <span id="siteseal">

                                        <script type="text/javascript" src="https://seal.godaddy.com/getSeal?sealID=ngrNrhNzGoZeSBh7wCiQivYG40xIDd4PNlVaDffzVh1Gyp6M3udu3w6nXU3"></script>

                                        <br />
                                        <a href='https://www.godaddy.com/gdshop/ssl/ssl.asp'>SSL Certificates</a></span>--%>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <p class="pPad">
                            <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label></p>
                    </asp:View>
                </asp:MultiView>
                </asp:Content>