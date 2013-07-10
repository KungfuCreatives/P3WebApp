<%@ Page Language="C#" AutoEventWireup="true" Inherits="customers" Codebehind="customers.aspx.cs" MasterPageFile="~/Site.Master" %>
<%@ Register src="CmsPageContent.ascx" tagname="CmsPageContent" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>Pinnacle 3 PMP | Best PMP Bootcamp Reviews | Pinnacle 3 Reviews</title>
<meta name="description" content="Our PMP Certification Bootcamp Classesare the best! Check out what our former customers think!" />
<meta name="keywords" content="PMP Reviews , Pinnacle 3 Reviews, Pinnacle 3 Learning Reviews, pinnacle 3 complaints"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
     <uc1:CmsPageContent ID="CmsPageContent1" runat="server" PageTitle="P3 Customers" />
</asp:Content>