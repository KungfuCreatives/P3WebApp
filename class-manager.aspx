<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="class-manager.aspx.cs" Inherits="P3WebApp.class_manager"MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>PMP Certification - Class Manager</title>
<meta name="description" content="">
<meta name="keywords" content="">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">  

<h1>
Class Manager
</h1>
<h3>
Add Classes Automatically
</h3>
<p>&nbsp;</p>
<table>
    <tr>
        <td valign="top"><b>Start Date</b><br/><telerik:DatePickingCalendar runat="server" ID="dpStartDate" EnableMultiSelect="false"/></td>
        <td valign="top"><b>End Date</b><br/><telerik:DatePickingCalendar runat="server" ID="dpEndDate"  EnableMultiSelect="false"/></td>
    </tr>
    <tr>
        <td valign="top"><b>Classes</b><br/><telerik:RadListBox runat="server" ID="lbClasses" SelectionMode="Single"  CheckBoxes="true" >
        </telerik:RadListBox></td>
        <td valign="top"><b>Days</b><br/><telerik:RadListBox runat="server" ID="lbDays"  SelectionMode="Single" >
        </telerik:RadListBox></td>
    </tr>
    <tr>
        <td valign="top"><b>Locations</b><br/><telerik:RadListBox runat="server" ID="lbLocations" SelectionMode="Single" CheckBoxes="true">
        </telerik:RadListBox></td>
        <td valign="top"><b>Occurs</b><br/><telerik:RadListBox runat="server" ID="lbOccurs" SelectionMode="Single" >
        <Items>
            <telerik:RadListBoxItem runat="server" Text="Weekly" Value="7"/>
            <telerik:RadListBoxItem runat="server" Text="Bi-Weekly" Value="14" />
        </Items>
        </telerik:RadListBox>
        <p>
        Password: <asp:TextBox TextMode="Password" runat="server" ID="txtPassword"></asp:TextBox><br/><asp:Literal runat="server" ID="ltrError"></asp:Literal>
        </p>
        <p>
        <asp:Button runat="server" ID="btnRun" Text="Run" onclick="btnRun_Click" />
        </p>
        <p>
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        </p>
        </td>
    </tr>
</table>
<p>&nbsp;</p>

<asp:Button runat="server" ID="btnCreateuser" Text="Create User" onclick="btnCreateUser_Click" />
<p>&nbsp;</p>
</asp:Content>