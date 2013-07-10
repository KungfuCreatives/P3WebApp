<%@ Page Language="C#" AutoEventWireup="true" Inherits="Contact_Pinnacle_3_PMP_Certification_Training" Codebehind="Contact_Pinnacle_3_PMP_Certification_Training.aspx.cs" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>Pinnacle 3 Learning | The Project Management Training Experts</title>
<meta name="description" content="Contact Pinnacle 3 Learning for questions and to find out more about how our Project Management training can help your career." />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
                <img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
                <h1 style="text-align:center;">Contact Pinnacle 3 Learning</h1>
                <br />
                    <table cellpadding="0" cellspacing="0" border="0">
                        <tr>
                            <td>
                            <div></h3><b>Eastern Regional Office</b>
                                <div align="left"><img src="images/Pinnacle_3_PMP_DC_Office.jpg" alt="" width="97" height="97" longdesc="images/Pinnacle_3_PMP_DC_Office.jpg" /></div></td>
                        </tr>
                        <tr>
                            <td width="31%">
                                10411 Motor City Drive  
                                Suite 750
                                <br />
                                Bethesda, MD 20817</td>
                        </tr>
                        <tr>
                            <td>
                                <strong>Main: (202) 706-7620</strong> </td>
                        </tr>
                        <tr>
                            <td>
                                                            
                        <h3 class="style2">
                            <u>Customer Service</u></h3>
                        <span class="style7"><b>Telephone:</b> <strong>(888) 808-4PMP (4767)</strong></span><br />
                        <b>Email:</b> <a href="mailto:custserv@pinnacle3.com">custserv@pinnacle3.co</a><a
                                href="mailto:">m</a><br />
                        <p>
                            <b>Comments or Questions?</b><br />
                            Email us at <a href="mailto:info@pinnacle3.com">info@pinnacle3.com</a>, or fill
                            out this form:
                        <table width="100%" border="0" cellpadding="2" cellspacing="0">
                                        <tr>
                                            <td align="right" valign="top">
                                                First Name:                                                </td>
                                            <td valign="top">
                                                <asp:TextBox ID="fname" runat="server"></asp:TextBox>*<asp:RequiredFieldValidator
                                                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" ErrorMessage="First Name Required!"></asp:RequiredFieldValidator>                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="right" valign="top">
                                                Last Name:                                                </td>
                                            <td valign="top">
                                                <asp:TextBox ID="lname" runat="server"></asp:TextBox>*<asp:RequiredFieldValidator
                                                    ID="RequiredFieldValidator2" runat="server" ControlToValidate="lname" ErrorMessage="Last Name Required!"></asp:RequiredFieldValidator>                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="right" valign="top">
                                                Email:                                                </td>
                                            <td valign="top">
                                                <asp:TextBox ID="email" runat="server"></asp:TextBox>*<asp:RequiredFieldValidator
                                                    ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" Display="Dynamic"
                                                    ErrorMessage="Email is Required!"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email"  Display="Dynamic"
                                                    ErrorMessage="Please Enter a Valid Email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="right" valign="top">
                                                How&nbsp;Did&nbsp;You&nbsp;Find&nbsp;Us:                                                </td>
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
                                                </asp:DropDownList>
                                                *<asp:Label ID="Label2" runat="server" ForeColor="Red" Visible="false" Text="Please select one."></asp:Label><br />
                                                <asp:TextBox ID="sourceOther" Visible="true" runat="server"></asp:TextBox>
                                                (other)                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="right" valign="top">
                                                Company:                                                </td>
                                            <td valign="top">
                                                <asp:TextBox ID="company" runat="server"></asp:TextBox>                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="right" valign="top">
                                                Daytime Phone:                                                </td>
                                            <td valign="top">
                                                <asp:TextBox ID="dayPhone" runat="server"></asp:TextBox>*<asp:RequiredFieldValidator
                                                    ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter your phone number."
                                                    ControlToValidate="dayPhone" Display="Dynamic" /><asp:RegularExpressionValidator
                                                        ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid phone number. (ex. 888-999-0000)"
                                                        ControlToValidate="dayPhone" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                                                        Display="Dynamic"></asp:RegularExpressionValidator>                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="right" valign="top">
                                                Comments:                                                </td>
                                            <td valign="top">
                                                <nobr><asp:TextBox ID="comments" runat="server" TextMode="MultiLine" Rows="4" Width="275px"></asp:TextBox>
                                                *</nobr><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="comments"
                                                    ErrorMessage="Let Us Know How We Can Help!"></asp:RequiredFieldValidator>                                                </td>
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
                                        <tr>
                                            <td>&nbsp;                                                </td>
                                            <td valign="top">
                                                <asp:ImageButton ID="Submit" runat="server" ImageUrl="images/btn_sendInquiry_blue.jpg" OnClick="Submit_Click" OnClientClick="_gaq.push(['_trackEvent', 'Submissions', 'ContactSent', 'ContactForm',, false]);" />                                                </td>
                                        </tr>
                        </table>
                        </p>
                        <h4 class="style3">
                            Careers</h4>
                        <p>
                            <strong><u>Regional Sales Representative </u></strong>- Responsible for the field
                            sales effort and implementation of the marketing plan. Outsides sales,inside sales,
                            including prospecting for new business, account development, follow-up and client
                            retention.</p>
                        <p><strong><u>PMP Certification Instructors: </u></strong>We are looking to increase our PMP Certification faculty. We have 7 current openings across the country. PMP Certification and Travel up to 25% is a minimum requirement. Please send your resume along with training experience.</p>
                        <p>Submit Inquiries and Resumes to <a href="mailto:careers@pinnacle3.com">careers@pinnacle3.com</a></p>
                        </td>
                        </tr>
                    </table>

</asp:Content>
