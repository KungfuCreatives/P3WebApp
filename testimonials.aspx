<%@ Page Language="C#" AutoEventWireup="true" Inherits="testimonials" Codebehind="testimonials.aspx.cs" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
    <title>PMP Certification Reviews | PMP Bootcamp Reviews | Pinnacle 3 Learning Reviews</title>
<meta name="description" content="We offer the Best PMP Certification Bootcamp Classes! Read what our satisfied customers have had to say!" />
<meta name="keywords" content="PMP Reviews , Pinnacle 3 Reviews, Pinnacle 3 Learning Reviews, pmp course reviews, pinnacle 3 learning complaints"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
    <img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
    <asp:Repeater runat="server" ID="rptTestimonials" DataSourceID="xdsTestimonials" >
<ItemTemplate>
<p>
<b><%#XPath("reference")%></b><br />
    <%#XPath("quote")%></p><br />
</ItemTemplate>
</asp:Repeater>
<p>&nbsp;</p>
     <asp:XmlDataSource runat="server" ID="xdsTestimonials" 
         DataFile="~/App_Data/testimonials.xml" XPath="testimonials/testimonial" ></asp:XmlDataSource>
</asp:Content>