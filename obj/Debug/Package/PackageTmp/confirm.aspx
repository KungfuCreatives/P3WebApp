<%@ Page Language="C#" AutoEventWireup="true" Inherits="P3WebApp.confirm" Codebehind="confirm.aspx.cs" MasterPageFile="~/Register.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>(PMP®) Project Management Professional Certification | Confirm Your Enrollment</title>
    <meta name="description" content="PMP Certification Courses with a 98% SUCCESS RATE! Take Your Career To The Next Level with a Project Management Certification! Our Project Management Exam Training is The Best PMP Training Company Available. Check Us Out!">
<meta name="keywords" content="PMP Certification, Project Management Certification, PMP Exam, PMP Courses, PMP Training, Project Management Training, Project Management Courses">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
    <img src="images/default_06.jpg" width="958" height="234" alt="">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
                <p class=><asp:HyperLink runat="server" ID="hypBack" Text="Back to registration"></asp:HyperLink></p>
                 <center>
                 <h1>Confirm Your Pinnacle 3 Learning Registration</h1>
                        <table cellpadding="2" cellspacing="0" border="0">
                            <tr>
                                <td colspan="2">
                                    <h4>
                                        Class Information</h4>
                                </td>
                            </tr>
                            <tr>
                                <td class="label" align="right">
                                    Class:
                                </td>
                                <td>
                                    <asp:Label ID="lblClass"  runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="label" align="right">
                                    Class Location:
                                </td>
                                <td>
                                    <asp:Label ID="lblClassLocation" runat="server" Text=""></asp:Label>&nbsp;<asp:Label ID="lblHotel" runat="server" Text="" />&nbsp;<asp:Hyperlink ID="hotelInfoLink" Target="_blank" runat="server" Text="(info)" />
                                </td>
                            </tr>
                            <tr>
                                <td class="label" align="right">
                                    Class Date:
                                </td>
                                <td>
                                    <asp:Label ID="lblClassDate" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><asp:Label ID="lblClassDays" runat="server" Text="" /></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td><asp:Label ID="classTimes" runat="server" Text="8:30am to 6:00pm" /> </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <h4>
                                        Contact Information</h4>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    First Name:
                                </td>
                                <td>
                                    <asp:Label ID="billTo_firstName" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Last Name:
                                </td>
                                <td>
                                    <asp:Label ID="billTo_lastName" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Company:
                                </td>
                                <td>
                                    <asp:Label ID="lblCompany" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Address:
                                </td>
                                <td>
                                    <asp:Label ID="billTo_street1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    City:
                                </td>
                                <td>
                                    <asp:Label ID="billTo_city" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    State/Province:
                                </td>
                                <td>
                                    <asp:Label ID="billTo_state" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Postal Code:
                                </td>
                                <td>
                                    <asp:Label ID="billTo_postalCode" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Country:
                                </td>
                                <td>
                                    <asp:Label ID="billTo_country" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Email Address:
                                </td>
                                <td>
                                    <asp:Label ID="billTo_email" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Phone Number
                                </td>
                                <td>
                                    <asp:Label ID="billTo_phoneNumber" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" align="right" class="label">
                                    Comments:
                                </td>
                                <td>
                                    <asp:Label ID="billto_comments" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <h4>
                                        Payment Information</h4>
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
                                <td colspan="2">&nbsp;</td>
                            </tr>
                        </table>
                        <%--<telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="RadAjaxLoadingPanel" EnableAJAX="true">
                            <AjaxSettings>
                                <telerik:AjaxSetting AjaxControlID="ddlPaymentType">
                                    <UpdatedControls>
                                        <telerik:AjaxUpdatedControl ControlID="uPnlPayment" />
                                    </UpdatedControls>
                                </telerik:AjaxSetting>
                                <telerik:AjaxSetting AjaxControlID="btnPay">
                                    <UpdatedControls>
                                        <telerik:AjaxUpdatedControl ControlID="uPnlPayment" />
                                    </UpdatedControls>
                                </telerik:AjaxSetting>
                                <telerik:AjaxSetting AjaxControlID="btnEnroll">
                                    <UpdatedControls>
                                        <telerik:AjaxUpdatedControl ControlID="uPnlPayment" />
                                    </UpdatedControls>
                                </telerik:AjaxSetting>
                            </AjaxSettings>
                        </telerik:RadAjaxManager>--%>
                        <div class="secureSeal">
                            <asp:Panel runat="server" ID="pnlSiteSeal" Visible="false" Width="100px">
                                <span id="siteseal"><script type="text/javascript" src="https://seal.godaddy.com/getSeal?sealID=ngrNrhNzGoZeSBh7wCiQivYG40xIDd4PNlVaDffzVh1Gyp6M3udu3w6nXU3"></script></span>
                            </asp:Panel>
                        </div>
                         <asp:Panel runat="server" ID="uPnlPayment">
                         <table cellpadding="2" cellspacing="0" border="0">
                            <tr>
                                <td>
                                <h3><nobr>Preferred payment method</nobr></h3>
                                </td>
                                <td width="80%">
                               <asp:DropDownList ID="ddlPaymentType" runat="server"  AutoPostBack="true" onselectedindexchanged="ddlPaymentType_SelectedIndexChanged">

                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please select Payment Method"
                                                InitialValue="0" ControlToValidate="ddlPaymentType"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="left">
                                    <asp:Panel runat="server" ID="pnlPayNow" Visible="false">
                                    <hr />
                                    <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                        <h4>Please enter  your credit card information:</h4>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><nobr>First Name</nobr></td><td width="80%"><asp:TextBox runat="server" ID="txtFirstNameOnCard"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the Cardholder's First Name"
                                    Display="Dynamic" ControlToValidate="txtFirstNameOnCard" ></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td><nobr>Last Name</nobr></td><td width="80%"><asp:TextBox runat="server" ID="txtLastNameOnCard"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Please enter the Cardholder's Last Name"
                                    Display="Dynamic" ControlToValidate="txtLastNameOnCard" ></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td><nobr>Card Number</nobr></td><td><asp:TextBox runat="server" ID="txtCardnumber"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Credit Card Number is missing"
                                    Display="Dynamic" ControlToValidate="txtCardnumber" ></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td valign="middle"><nobr>Security Code</nobr></td>
                                        <td valign="top"><asp:TextBox runat="server" ID="txtCcv" MaxLength="4" Width="50px"></asp:TextBox>
                                          <asp:image runat="server" ID="imgCCV" AlternateText="img-whats-this" 
                                    ToolTip="The three or four digit card security code (CSC), card verification value (CVV) or code (CVC), which is typically printed on the back of the credit card." 
                                    ImageUrl="images/question.jpg" Height="20px" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Security Code is missing"
                                    Display="Dynamic" ControlToValidate="txtCcv" ></asp:RequiredFieldValidator>
                                    </td>
                                    </tr>
                                    <tr>
                                        <td>Expiration</td>
                                        <td><nobr>
                                        <asp:DropDownList runat="server" ID="ddlExpyMonth">
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
                                        <asp:DropDownList runat="server" ID="ddlExpyYear">
                                        </asp:DropDownList></nobr>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                        <h4>Billing information:</h4>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><nobr>Name</nobr></td><td><asp:TextBox runat="server" ID="txtBillName" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter the Billing Name"
                                    Display="Dynamic" ControlToValidate="txtBillName" ></asp:RequiredFieldValidator></td>
                                    </tr>
                                     <tr>
                                        <td><nobr>Company (optional)</nobr></td><td><asp:TextBox runat="server" ID="txtBillCompany" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><nobr>Address</nobr></td><td><asp:TextBox runat="server" ID="txtBillAddress" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter the Billing Address"
                                    Display="Dynamic" ControlToValidate="txtBillAddress" ></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td><nobr>City</nobr></td><td><asp:TextBox runat="server" ID="txtBillCity" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter the Billing City"
                                    Display="Dynamic" ControlToValidate="txtBillCity" ></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td><nobr>State</nobr></td><td><asp:TextBox runat="server" ID="txtBillState" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter the Billing State"
                                    Display="Dynamic" ControlToValidate="txtBillState" ></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td><nobr>Zip</nobr></td><td><asp:TextBox runat="server" ID="txtBillZip"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter the Billing Zip"
                                    Display="Dynamic" ControlToValidate="txtBillZip" ></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td><nobr>Email</nobr></td><td><asp:TextBox runat="server" ID="txtBillEmail" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please enter the Billing Email"
                                        Display="Dynamic" ControlToValidate="txtBillEmail" ></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBillEmail"
                                        Display="Dynamic" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><nobr>Phone</nobr></td><td><asp:TextBox runat="server" ID="txtBillPhone" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Please enter the Billing Phone"
                                    Display="Dynamic" ControlToValidate="txtBillPhone" ></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                        <asp:ImageButton ID="btnPay" runat="server" ImageUrl="images/btn_SubmitPayment_blue.jpg" 
                                        onclick="btnPay_Click" CausesValidation="true" />
                                        </td>
                                    </tr>
                                    
                                    <%--<tr>
                                        <td colspan="2" align="center">Please note "Projected Proficiency" will appear on your credit card statement.</td>
                                    </tr>--%>
                                    <tr>
                                        <td colspan="2" align="center">
                                        <asp:label runat="server" ID="lblMessage" ForeColor="Red" Font-Bold="true"></asp:label>
                                        </td>
                                    </tr>
                                </table>
                                </asp:Panel>
                                <asp:Panel runat="server" ID="pnlPayLater" Visible="false">
                                <hr />
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                        <b>Please Note:</b> Your space will be held but not guaranteed until payment is received. A representative will contact you soon to arrange payment.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                        <asp:ImageButton ID="btnEnroll" runat="server" ImageUrl="images/btn_confirmEnrollment_blue.jpg" OnClick="btnEnroll_Click" CausesValidation="false" />
                                        </td>
                                    </tr>
                                </table>
                                </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                        </table>
                        </asp:Panel>
                        <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel" runat="server" Skin="Default">
                        </telerik:RadAjaxLoadingPanel>
                        </center>
                        <asp:PlaceHolder ID="PlaceHolder1" runat="server">
                        <!-- Google code for Analytics Goals -->
                        <script type="text/javascript">
                        window.onload = function() { // this will be run when the whole page is loaded
                           _gaq.push(['_trackEvent', 'Submissions', 'Initiation', 'Registration', <%=AmountToCharge / 2 %> , false]);
                        };
                        </script>
                        </asp:PlaceHolder>
                </asp:Content>