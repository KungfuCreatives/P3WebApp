<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="location-six-sigma-black-belt.aspx.cs" Inherits="P3WebApp.location_sixsigma_black" MasterPageFile="~/Location.Master" %>
<%@ Register src="ClassHeader.ascx" tagname="ClassHeader" tagprefix="uc1" %>
<%@ Register src="CmsPageContent.ascx" tagname="CmsPageContent" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<asp:placeholder runat="server">
    <title><%=City %> Lean Six Sigma Black Belt Training | Lean Six Sigma Black Belt Courses</title>
<meta name="description" content="We have Lean Six Sigma Black Belt Certification Classes and Lean Six Sigma Black Belt Courses Available in the <%=City %> Area. We Offer the Highest Quality Lean Six Sigma Black Belt Training in <%=City %>, Guaranteed!" />
<meta name="keywords" content="pmp certification, pmp, pmp training, pmp certificate, pmp boot camp, pmp exam prep, pmp certification training, pmi, pmp exam questions, pmi certification, project management certification, pmp certification requirements, pmi certification, project management professional certification, pmi pmp, certification pmp, pmp certification exam, pmp certified, pmi pmp certification, pmp requirements, pmp certifications, pmp cert, pmp certification prep, pmp education, pmp certification class, pmp certification test, PMP Exam, PMP Exam Prep, PMP Course, PMP Online Course, PMP Certification Training, PMP Training, Online PMP Training, PMP Preparation, PMP Free, PMP Practice Question, PMI Exam, PMI Course, PMI Online Course, PMI Certification Training, PMI Training, Online PMI Training, Project Management Certification PMP, Project Management Certification, Certification Project Management, Project Management Training, pmp, pmp exam, pmp exam prep, pmp bootcamp, pmp exam preparation, pmp prep, pmi pmp exam, pmp exam simulation, project management professional exam, pmp exam training, pmp prep courses, online pmp exam prep, pmp questions, pmp test, pmp training, pmp certification training, pmi training, pmp examination, pmi certification training, pmi pmp training" />
</asp:placeholder>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
    <img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
<asp:Panel runat="server" ID="pnlStaticDetails">
        <uc1:CmsPageContent ID="CmsPageContent1" runat="server" PageTitle="P3 Location Page: Lean Six Sigma Black Belt" />
    </asp:Panel> 
    <asp:Panel runat="server" ID="pnlRssDetails" Visible="true">
        <uc1:CmsPageContent ID="CmsLocationContent" runat="server" />
    </asp:Panel>
     <asp:Image runat="server" ID="imgHotel" ImageAlign="Left" CssClass="imgFloatLeft" />
    <b><%# this.Hotel %></b><br />
    <%# this.HotelAddress%><br />
    <%# this.HotelNumber%><br />
    <asp:HyperLink runat="server" ID="hypHotelWebsite" Target="_blank">web site</asp:HyperLink><br />
    <p><%# this.HotelDescription%></p>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="RightContent" ID="rightContent">
<uc1:ClassHeader ID="ClassHeader1" ClassType="L6BI" ShowImage="false" runat="server" />
<fieldset class="locationSchedule wrapper">
<h1><%# City %></h1>
<h4>Lean Six Sigma Black Belt Class</h4>
    <telerik:RadListView ID="RadListViewClasses" runat="server" DataSourceID="classDB">
        <ItemTemplate>
            <div class="class wrapper">
                <div class="classDetailsWrapper">
                    <table class="classDetailsTable">
                        <tr>
                            <td class="classTitle">
                            Lean Six Sigma
                            </td>
                            <td class="classPrice" rowspan="2"><asp:imagebutton runat="server" ImageUrl="~/images/register-btn.png"  ToolTip="Register now for this class" ID="Imagebutton1" CommandName='<%# GetPrice(DateTime.Parse(Eval("dtClassDate").ToString())) %>'  CommandArgument='<%#Eval("ClassID") %>' OnClick="RegisterButton_Click"  /><br />
                                <span class="priceText"><%# GetPriceText(DateTime.Parse(Eval("dtClassDate").ToString()))%></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="classDetails"><%# Eval("ClassDate")%><br />8:30am - 6:00pm<div class="classComment"><%# GetComment(Eval("Comment").ToString(), DateTime.Parse(Eval("dtClassDate").ToString()))%></div></td>
                        </tr>
                    </table>
                </div>
            </div>
        </ItemTemplate>
    </telerik:RadListView>
</fieldset>
     
    <p>&nbsp;</p>
    <asp:AccessDataSource ID="classDB" runat="server" 
    DataFile="~/App_Data/classes_v2.mdb" SelectCommand="
    SELECT classes.ClassID, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.*, Locations.LocationDesc as City,Locations.LocationSeo, classes.HOT, 
    Format(classes.ClassDate,&quot;mmm d&quot;) & &quot; - &quot; & Format(classes.ClassDate+4,&quot;d&quot;) & &quot;, &quot; & Format(classes.ClassDate,&quot;yyyy&quot;)  as ClassDate,  
    classes.SeatsAvailable, classes.numdays, 
    classes.ClassDate as dtClassDate,  
    classes.Comment,
    classes.ClassDaysID
    FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID
    WHERE (((classes.ClassDate)&gt;=Now()))
    AND classes.ClassTypeID=7
    and Locations.LocationSeo = @Location
    ORDER BY classes.ClassDate;">
    <SelectParameters>
        <asp:Parameter Name="Location"/>
    </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>
