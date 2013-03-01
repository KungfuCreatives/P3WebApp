<%@ Page Language="C#" AutoEventWireup="true" Inherits="P3WebApp.register" Codebehind="register.aspx.cs" MasterPageFile="~/Register.Master" %>
<%@ Register src="ClassHeader.ascx" tagname="ClassHeader" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>(PMP®) Project Management Professional Certification | Complete Your Registration</title>
<meta name="description" content="PMP Certification Courses with a 98% SUCCESS RATE! Take Your Career To The Next Level with a Project Management Certification! Our Project Management Exam Training is The Best PMP Training Company Available. Check Us Out!">
<meta name="keywords" content="PMP Certification, Project Management Certification, PMP Exam, PMP Courses, PMP Training, Project Management Training, Project Management Courses">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
                    	<p><img src="images/title_register.gif" alt="Pinnacle 3 Learning - PMP Certification Training"></p>
                    	&nbsp;<br />
                        <uc1:ClassHeader ID="ClassHeader1" runat="server" ClassType="PMP" />
                            <table cellpadding="2" cellspacing="0" border="0" width="520" align="center" class="style4">
                                <tr>
                                    <td align="right"><asp:Label ID="Label1" runat="server" Text="City: " Font-Bold="True" /></td>
                                    <td>
                                        <asp:Label ID="locationLabel" runat="server" Text="" /></td>
                                </tr>
                                <tr>
                                    <td align="right" valign="top"><asp:Label ID="Label2" runat="server" Text="Location: " Font-Bold="True" /></td>
                                    <td>
                                        <asp:Label ID="hotelLabel" runat="server" Text="" />&nbsp;<asp:Hyperlink ID="hotelInfoLink" Target="_blank" runat="server" Text="web site" /></td>
                                </tr>
                                <tr>
                                    <td align="right"><asp:Label ID="Label3" runat="server" Text="Date & Time: " Font-Bold="True" /></td>
                                    <td><asp:Label ID="classDate" runat="server" Text="" /></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="classID" runat="server" Text="" Visible="false" /></td>
                                    <td><asp:Label ID="classDays" runat="server" Text="" ForeColor="Red" /></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><asp:Label ID="classTimes" runat="server" Text="9:00A - 6:00P" /> </td>
                                </tr>
                                
                                <tr>
                                <td colspan="2">
                                    <table cellpadding="2" cellspacing="0" border="0">
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
                                                <asp:TextBox ID="billTo_firstName" runat="server" Width="200px" />&nbsp;*
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="billTo_firstName"
                                                    Display="Dynamic" ErrorMessage="required"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="label">
                                                Last Name:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="billTo_lastName" runat="server" Width="200px" />&nbsp;*
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="billTo_lastName"
                                                    Display="Dynamic" ErrorMessage="required"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                                <td align="right" class="label">
                                                    Company:                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtcompany" runat="server" Width="200px"></asp:TextBox>                                              
                                                    </td>
                                            </tr>
                                        <tr>
                                            <td align="right" class="label">
                                                Address:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="billTo_street1" runat="server" Width="200px" />&nbsp;*
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="billTo_street1"
                                                    Display="Dynamic" ErrorMessage="required"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="label">
                                                City:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="billTo_city" runat="server" Width="200px" />&nbsp;*
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="billTo_city"
                                                    Display="Dynamic" ErrorMessage="required"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="label">
                                                State/Province:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="billTo_state" runat="server" />&nbsp;*
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="billTo_state"
                                                    Display="Dynamic" ErrorMessage="required"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="label">
                                                Postal Code:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="billTo_postalCode" runat="server" />&nbsp;*
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="billTo_postalCode"
                                                    Display="Dynamic" ErrorMessage="required"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="label">
                                                Country:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="billTo_country" Text="USA" runat="server" Width="200px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="label">
                                                Email Address:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="billTo_email" runat="server" Width="200px"  />&nbsp;*
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="billTo_email"
                                                    Display="Dynamic" ErrorMessage="required"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="billTo_email"
                                                    Display="Dynamic" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="label">
                                                Phone Number:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="billTo_phoneNumber" runat="server" Width="200px" />&nbsp;*
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="billTo_phoneNumber"
                                                    Display="Dynamic" ErrorMessage="required"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                         <tr>
                                                <td align="right" valign="top">
                                                    How&nbsp;Did&nbsp;You&nbsp;Find&nbsp;Us:
                                                    </td>
                                                <td valign="top">
                                                    <asp:DropDownList ID="findUs" runat="server">
                                                        <asp:ListItem Selected="True" Value="0">Please Select One ---</asp:ListItem>
                                                        <asp:ListItem Value="9">PMI Website/Newsletter</asp:ListItem>
                                                        <asp:ListItem Value="1">Employer</asp:ListItem>
                                                        <asp:ListItem Value="2">Radio</asp:ListItem>
                                                        <asp:ListItem Value="3">Google</asp:ListItem>
                                                        <asp:ListItem Value="4">Yahoo</asp:ListItem>
                                                        <asp:ListItem Value="5">MSN</asp:ListItem>
                                                        <asp:ListItem Value="6">Newsletter</asp:ListItem>
                                                        <asp:ListItem Value="7">Email</asp:ListItem>
                                                        <asp:ListItem Value="8">Friend/Colleague (specify)</asp:ListItem>
                                                        <asp:ListItem Value="8">Other (specify)</asp:ListItem>
                                                    </asp:DropDownList>&nbsp;*<br />
                                                    <asp:TextBox ID="sourceOther" Visible="true" runat="server"></asp:TextBox>
                                                    (other)
                                                    </td>
                                            </tr>
                                            
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
                                                <asp:TextBox ID="billto_comments" runat="server" Rows="4" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="right" class="label">
                                            Captcha:
                                            </td>
                                            <td>
                                                <asp:Panel runat="server" ID="pnlCaptcha">
                                                    <BotDetect:Captcha ID="SampleCaptcha" runat="server" />
                                                    <asp:TextBox ID="CaptchaCode" runat="server" />
                                                    <asp:Label ID="CaptchaErrorLabel" runat="server"  ForeColor="Red"/>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle" colspan="2">
                                    <hr /></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="RadAjaxLoadingPanel" EnableAJAX="true">
                                        <AjaxSettings>
                                            <telerik:AjaxSetting AjaxControlID="nextStep">
                                                <UpdatedControls>
                                                    <telerik:AjaxUpdatedControl ControlID="uPnlPayment" />
                                                    <telerik:AjaxUpdatedControl ControlID="pnlCaptcha" />
                                                </UpdatedControls>
                                            </telerik:AjaxSetting>
                                        </AjaxSettings>
                                    </telerik:RadAjaxManager>
                                     <asp:Panel runat="server" ID="uPnlPayment">
                                    
                                    <asp:ImageButton ID="nextStep" runat="server" 
                                            ImageUrl="images/btn_nextStep_blue.gif" onclick="nextStep_Click" />
                                            
                                            </asp:Panel>
                                            <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel" runat="server" Skin="Default">
                                            </telerik:RadAjaxLoadingPanel>

                                            </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle" colspan="2">
                                <asp:Panel runat="server" ID="pnlPMPCert" Visible="false">
                                <br />
                                <br />
                                    <b>The Project Management Professional ® Exam Prep course includes:
                    	            <ul>
                                        <li>PMBOK® Guide-Fourth Edition</li>
                    	                <li>Pre-course       &quot;Blueprint For Success&quot;</li>
                    	                <li>Online test simulator</li>
                    	                <li>Detailed review and breakdown of the knowledge needed to pass the PMP® Certification Exam. </li>
                    	                <li>Critical Exam Taking Techniques</li>
                    	                <li>Memory enhancement techniques </li>
                    	                <li>In class accelerated learning techniques using audio, visual and kinesthetic       approaches</li>
                    	                <li>Over 550+ practice questions</li>
                    	                <li>PMP Exam prep study guides</li>
                    	                <li>Approved 36 contact hour PMP® Exam Certification Course</li>
                  	                </ul></b>
                                    </asp:Panel>
                                </td>
                                </tr>
                            </table>
                            <br />&nbsp;
</asp:Content>