<%@ Page Language="C#" AutoEventWireup="true" Inherits="_Default" Codebehind="Default.aspx.cs"  MasterPageFile="~/Site.Master" %>
<%@ Register src="CmsPageContent.ascx" tagname="CmsPageContent" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>Project Management Certification Application | PMP Application FAQs</title>
<meta name="description" content="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
<uc1:CmsPageContent ID="CmsLocationContent" runat="server"  PageTitle="PMP Application"/>                	  
<p>&nbsp;</p>
</asp:Content>
                