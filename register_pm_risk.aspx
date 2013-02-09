<%@ Page Language="C#" AutoEventWireup="true" Inherits="register_pm_risk" Codebehind="register_pm_risk.aspx.cs" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ContentPlaceHolderID=MetaContent ID="contentMeta">
<META NAME="description" CONTENT="PMP Certification Courses with a 98% SUCCESS RATE! Take Your Career To The Next Level with a Project Management Certification! Our Project Management Exam Training is The Best PMP Training Company Available. Check Us Out!">
<META NAME="keywords" CONTENT="PMP Certification, Project Management Certification, PMP Exam, PMP Courses, PMP Training, Project Management Training, Project Management Courses">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
                    	<h1 class="pPadH1">Register for Your Pinnacle 3 Learning Class</h1>
                    	&nbsp;<br />
                            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                                <asp:View ID="View1" runat="server">
                                    <table cellpadding="2" cellspacing="0" border="1" width="520" align="center">
                                        <tr>
                                            <td width="200"><asp:Label ID="Label1" runat="server" Text="Location: " Font-Bold="True" />
                                                <asp:Label ID="locationLabel" runat="server" Text="" /></td>
                                            <td align="right" width="320"><asp:Label ID="Label2" runat="server" Text="Hotel: " Font-Bold="True" />
                                                <asp:Label ID="hotelLabel" runat="server" Text="" />&nbsp;<asp:Hyperlink ID="hotelInfoLink" Target="_blank" runat="server" Text="(info)" /></td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <table cellpadding="1" cellspacing="0" border="0">
                                                    <tr>
                                                        <td><asp:Label ID="Label3" runat="server" Text="Date & Time: " Font-Bold="True" /></td>
                                                        <td>&nbsp;<asp:Label ID="classDate" runat="server" Text="" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td><asp:Label ID="classID" runat="server" Text="" Visible="false" /></td>
                                                        <td>&nbsp;<asp:Label ID="classDays" runat="server" Text="" ForeColor="Red" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;<asp:Label ID="classTimes" runat="server" Text="8:00A - 6:00P" /> </td>
                                                    </tr>
                                                </table>
                                                <br />
                                                
                                            </td>
                                            <td valign="top">
                                                 <table cellpadding="2" cellspacing="0" border="0">
                                                    <tr>
                                                        <td valign="top" align="right"><asp:Label ID="Label4" runat="server" Text="Payment Option:" Font-Bold="true" /></td>
                                                        <td><asp:Label ID="Label5" runat="server" Text="We accept American Express, Mastercard, and Visa.  We also accept checks (personal and corporate).  Instructions for checks will be provided after registering." /></td>
                                                    </tr>
                                                </table>
                                           </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="center" valign="middle" colspan="2">
                                            <b>Select the Number of Students</b><br />
                                                <asp:DropDownList ID="numberOfStudents" runat="server">
                                                    <asp:ListItem Text="1" Value="1" Selected="True" />
                                                    <asp:ListItem Text="2" Value="2" />
                                                    <asp:ListItem Text="3" Value="3" />
                                                    <asp:ListItem Text="4" Value="4" />
                                                    <asp:ListItem Text="5" Value="5" />
                                                    <asp:ListItem Text="6" Value="6" />
                                                    <asp:ListItem Text="7" Value="7" />
                                                    <asp:ListItem Text="8" Value="8" />
                                                    <asp:ListItem Text="9" Value="9" />
                                                    <asp:ListItem Text="10" Value="10" />
                                                </asp:DropDownList><br />
                                                <table>
                                                    <tr>
                                                        <td valign="middle"><b>Coroporate Code:</b></td>
                                                        <td><asp:TextBox ID="couponCode" runat="server"></asp:TextBox></td>
                                                        <td><asp:LinkButton ID="applyCode" runat="server" onclick="applyCode_Click1">Apply Code</asp:LinkButton></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" align="center"><asp:Label ID="codeConf" runat="server"></asp:Label></td>
                                                    </tr>
                                                </table>
                                                <asp:Label ID="Label6" runat="server" Text="Cost Per Student: " Font-Bold="true" />
                                                $<asp:Label ID="costPerStudent" runat="server" Text="2495" />                                              
                                            </td>
                                            
                                        </tr>
                                        
                                        <tr>
                                            <td colspan="2">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" align="center"><asp:Button ID="nextStep" runat="server" 
                                                    Text="Complete Registration" onclick="nextStep_Click" /></td>
                                        </tr>
                                    </table>
                                    
                                </asp:View>
                            </asp:MultiView>
                            <br />&nbsp;
</asp:Content>      