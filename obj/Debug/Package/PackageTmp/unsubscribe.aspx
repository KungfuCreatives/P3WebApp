<%@ Page Language="C#" AutoEventWireup="true" Inherits="unsubscribe" Codebehind="unsubscribe.aspx.cs" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<meta name="description" content="PMP Certification Courses with a 98% SUCCESS RATE! Take Your Career To The Next Level with a Project Management Certification! Our Project Management Exam Training is The Best PMP Training Company Available. Check Us Out!">
<meta name="keywords" content="PMP Certification, Project Management Certification, PMP Exam, PMP Courses, PMP Training, Project Management Training, Project Management Courses">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
        	<h1>Contact Pinnacle 3 Learning</h1>
                &nbsp;<br />
            <table height="817" border="0" cellpadding="0" cellspacing="0">
                
                <tr>
                    <td valign="top">
                        
                        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                            <asp:View ID="View1" runat="server">
                                <table cellpadding="2" cellspacing="0" border="0">
                                    <tr>
                                        <td colspan="2">
                                            We are sorry to see you go!  To unsubscribe, please enter your email address below, and submit the form.  Thank you for your interest in Pinnacle 3 Learning's PMP training program.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">Email Address:</td>
                                        <td>
                                            <asp:TextBox ID="email" runat="server"></asp:TextBox>*<asp:RequiredFieldValidator 
                                                ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" 
                                                ErrorMessage="Email required!"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                                                    ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" Display="Dynamic" Text="Please enter a valid email." ControlToValidate="email"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                   
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td><asp:Button ID="Submit" runat="server" Text="Unsubscribe" 
                                                onclick="Submit_Click" /></td>
                                    </tr>
                      </table>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <p>
                                    <font color="red"><b>You have successfully been removed.</b></font>
                                </p>
                            </asp:View>
                        </asp:MultiView>     
                        </asp:Content>