<%@ Page Language="C#" AutoEventWireup="true" Inherits="whyus" Codebehind="why-us.aspx.cs" MasterPageFile="~/Site.Master" %>
<%@ Register src="CmsPageContent.ascx" tagname="CmsPageContent" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>Pinnacle 3 Learning | The Project Management Training Experts</title>
<meta name="description" content="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
     <uc1:CmsPageContent ID="CmsPageContent1" runat="server" PageTitle="P3 Why Us?" />
</asp:Content>