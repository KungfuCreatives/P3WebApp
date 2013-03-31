<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="article.aspx.cs" Inherits="P3WebApp.article" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>Project Management Training Experts | Article</title>
<meta name="description" content="" />
<link rel="canonical" href="http://www.pinnacle3learning.com/<%=canonical %>" /> 
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="" /></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
<h1 style="text-align:center"><asp:Label runat="server" ID="lblTitle"></asp:Label></h1>
<h3 style="text-align:center"><asp:Label runat="server" ID="lblPublished"></asp:Label></h3>
    <table>
        <tr>
            <td><asp:Label CssClass="style1" runat="server" ID="ltrContent"></asp:Label></td> 
        </tr>
    </table>
</asp:Content>