<%@ Page Language="C#" AutoEventWireup="true" Inherits="PMP_Private_Group_Training" Codebehind="PMP_Private_Group_Training.aspx.cs" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>PMP Certification | Project Management Certification | Private Group Training</title>
<meta name="description" content="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
                    	<h1 style="text-align:center">Private Group Training</h1>
                    	
                    	
                    	<p style="margin-bottom:10px; vertical-align:top;">
                            <img src="images/bordered_small_05.jpg" align="left" alt="" />Pinnacle 3 Learning is a premier provider of corporate training, offering corporate employee training and development programs and certification readiness services that deliver positive cost-benefit to your organization. Pinnacle 3's results-oriented business, management, project management, and risk management training programs increase employee productivity and improve your organization’s ability to reduce costs and increase revenue and profitability. We will customize our training to meet your organization’s development needs and deliver it whenever and wherever it is convenient for your group. 

                        </p>
                        <p>&nbsp;</p>
                        <ul>
                            <li>VALUE: Lower costs per attendee, No Travel expenses.</li>
                            <li>The Right Choice; Right Now: Pinnacle 3 will match the instructors who best fit your organization’s needs. Conduct the training when and where it is most convenient for your team. </li>
                            <li>High Quality Instruction and Course Materials: Learn from the most experienced practitioners in the industry. An interactive hands-on classroom environment tied with a real-world and immediately applicable training experience. </li>
                            <li>Team Development: Focused team development for corporate and non-profit organizations improves organization effectiveness.</li>
                            <li>Gain a Competitive Advantage In The Market Place: Employee Certification provides a valuable strategy to optimize your workforce. </li>
                            <li>Request Information: Email Us at <a href="mailto:Privategroup@pinnacle3.com">PrivateGroup@pinnacle3.com</a> to learn more about our private training.</li>
                
                        </ul>
                        <h2>Inquire about Private Group Training:</h2><br />
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
                                                    Attendee Count</td>
                                                <td valign="top">
                                                    <asp:DropDownList ID="ddlAttendeeCount" runat="server">
                                                        <asp:ListItem Selected="True" Value="1-3">1-3</asp:ListItem>
                                                        <asp:ListItem Value="4-6">4-6</asp:ListItem>
                                                        <asp:ListItem Value="7-9">7-9</asp:ListItem>
                                                        <asp:ListItem Value="10+">10+</asp:ListItem>
                                                    </asp:DropDownList><br /></td>
                                            </tr>
                                            <tr>
                                                 <td align="right" valign="top">
                                                    Preferred course</td>
                                                <td valign="top">
                                                    <asp:DropDownList ID="ddlCourse" runat="server">
                                                        <asp:ListItem Selected="True" Value="0">Please Select One ---</asp:ListItem>
                                                        <asp:ListItem Value="Project Management Professional (PMP®)">Project Management Professional (PMP®)</asp:ListItem>
                                                        <asp:ListItem Value="Certified Associate in Project Management (CAPM®)">Certified Associate in Project Management (CAPM®)</asp:ListItem>
                                                        <asp:ListItem Value="Lean Six Sigma Green Belt">Lean Six Sigma Green Belt</asp:ListItem>
                                                        <asp:ListItem Value="Lean Six Sigma Black Belt">Lean Six Sigma Black Belt</asp:ListItem>
                                                        <asp:ListItem Value="Project Risk">Project Risk</asp:ListItem>
                                                        <asp:ListItem Value="PM Essentials">PM Essentials</asp:ListItem>
                                                        <asp:ListItem Value="MS Project">MS Project</asp:ListItem>
                                                    </asp:DropDownList><br /></td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top">
                                                    Preferred location</td>
                                                <td valign="top">
                                                    <asp:DropDownList ID="ddlLocation" runat="server">
                                                        <asp:ListItem Selected="True" Value="0">Please Select One ---</asp:ListItem>
                                                        <asp:ListItem Value="My Facility">My Facility</asp:ListItem>
                                                        <asp:ListItem Value="Nearby Hotel">Nearby Hotel (specify)</asp:ListItem>
                                                        <asp:ListItem Value="Another City">Another City (specify)</asp:ListItem>
                                                        <asp:ListItem Value="No Preference">No Preference</asp:ListItem>
                                                    </asp:DropDownList><br /></td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top">
                                                    Comments:                                                </td>
                                                <td valign="top">
                                                    <nobr><asp:TextBox ID="comments" runat="server" TextMode="MultiLine" Rows="4" Width="300px"></asp:TextBox>
                                                    *</nobr><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="comments"
                                                        ErrorMessage="Let Us Know How We Can Help!"></asp:RequiredFieldValidator>                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;                                                </td>
                                                <td valign="top">
                                                <asp:ImageButton ID="Submit" runat="server" ImageUrl="images/btn_sendInquiry_blue.jpg" OnClick="Submit_Click" />
                                                </td>
                                            </tr>
                          </table>
                                  
                      <p>&nbsp;</p>
</asp:Content>
