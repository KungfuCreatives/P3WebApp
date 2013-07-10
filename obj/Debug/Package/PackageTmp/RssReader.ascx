<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RssReader.ascx.cs" Inherits="P3WebApp.RssReader" %>
<asp:Repeater ID="rptRSS" runat="server" DataSourceID="xmlRSS">
    <ItemTemplate>
            <h4 align="left"><%#XPath("title")%></h4>
            <p align="left"><asp:Literal runat="server" ID="ltrDescription" Text='<%# String.Format("{0}", GetSubstring(XPath("description").ToString(), 200)) %>'></asp:Literal>
            <a href='article.aspx?t=<%#XPath("title")%>'>more</a></p>
    </ItemTemplate>       
</asp:Repeater>
<asp:XmlDataSource ID="xmlRSS"            
    DataFile="http://pmpexampass.info/?feed=rss2&cat=-1"
    EnableCaching="false"
    XPath="rss/channel/item[position() < 3 and count(category)>0]"
    runat="server"/> 