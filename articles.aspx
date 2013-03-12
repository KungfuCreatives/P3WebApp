<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="articles.aspx.cs" Inherits="P3WebApp.articles" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>Project Management Training Experts | Articles</title>
<meta name="description" content="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner"> 
<img src="images/default_06.jpg" width="958" height="234" alt="" /></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
<h1 style="text-align:center">Articles</h1>
<asp:Repeater ID="rptRSS" runat="server" DataSourceID="xmlRSS">
    <ItemTemplate>
        <p>
            <h3><%#XPath("title")%></h3>
            <p>Published: <%#String.Format("{0:ddd, MMM d, yyyy}", DateTime.Parse(XPath("pubDate").ToString()))%></p>  
             <p align="left"><asp:Literal runat="server" ID="ltrDescription" Text='<%# String.Format("{0}", GetSubstring(XPath("description").ToString(), 240)) %>'></asp:Literal>
            <a href='article.aspx?t=<%#XPath("title")%>'>more</a></p>
        </p>
    </ItemTemplate>       
</asp:Repeater>
<asp:XmlDataSource ID="xmlRSS"            
    DataFile="http://pmpexampass.info/?feed=rss2&cat=-1"
    EnableCaching="false"    
    XPath="rss/channel/item[count(category)>0]"
    runat="server"/> 
                        	
</asp:Content>