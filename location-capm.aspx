<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="location-capm.aspx.cs" Inherits="P3WebApp.location_capm" MasterPageFile="~/Location.Master" %>
<%@ Register src="ClassHeader.ascx" tagname="ClassHeader" tagprefix="uc1" %>
<%@ Register src="CmsPageContent.ascx" tagname="CmsPageContent" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<link rel="canonical" href="http://www.pinnacle3learning.com/<%# LocationSeo %>-capm-training-class "/>
    <title><%# City %> CAPM® Certification | <%# City %> CAPM® Training | <%# City %> CAPM® Class</title>
<meta name="description" content="We have CAPM® Certification Classes and CAPM® Exam Prep Courses Available in the <%# City %> Area. We Offer the Highest Quality CAPM® Training in <%# City %>, Guaranteed!" />
<meta name="keywords" content="capm certification, capm, capm training, capm certificate, capm boot camp, capm exam prep, capm certification training, pmi, capm exam questions, pmi certification, project management certification, capm certification requirements, pmi certification, project management professional certification, pmi capm, certification capm, capm certification exam, capm certified, pmi capm certification, capm requirements, capm certifications, capm cert, capm certification prep, capm education, capm certification class, capm certification test, CAPM® Exam, CAPM® Exam Prep, CAPM® Course, CAPM® Online Course, CAPM® Certification Training, CAPM® Training, Online CAPM® Training, CAPM® Preparation, CAPM® Free, CAPM® Practice Question, PMI Exam, PMI Course, PMI Online Course, PMI Certification Training, PMI Training, Online PMI Training, Project Management Certification CAPM®, Project Management Certification, Certification Project Management, Project Management Training, capm, capm exam, capm exam prep, capm bootcamp, capm exam preparation, capm prep, pmi capm exam, capm exam simulation, project management professional exam, capm exam training, capm prep courses, online capm exam prep, capm questions, capm test, capm training, capm certification training, pmi training, capm examination, pmi certification training, pmi capm training" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
    <img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
<h1 style="text-align:center">CAPM® Exam Prep Class <%# City %></h1>
    <p class=" style4"><b>Class Details</b></p>
        <asp:Panel runat="server" ID="pnlStaticDetails">
        <p>
            In our <%# City %> CAPM® Exam Prep course, you'll gain the essential preparation needed to pass the Project Management Institutes CAPM® Certification Exam. The <%# City %> CAPM® Exam Prep course is based on the nine Knowledge Areas of the Guide to the Project Management Body of Knowledge(PMBOK® Guide) and the five process groups - Initiating, Planning, Executing, Monitoring and Controlling, and Closing as well as Critical Exam Taking Techniques. This <%# City %> CAPM® Exam Prep class will provide attendees with practical information and skill enhancing tips and techniques that can be applied immediately to the project work environment. Our study strategy will increase your comprehension and retention of the key elements of each knowledge area ensuring you are prepared to pass the detailed exam and earn your Certified Associate in Project Management (CAPM®) Credential.
        </p>
        <p class=" style4"><b>The <%# City %> Certified Associate in Project Management ® Exam Prep Course includes:</b></p>
        <ul>
            <li>PMBOK® Guide</li>
                <li>Pre-course &quot;Blueprint For Success&quot;</li>
                <li>Online test simulator</li>
                <li>Detailed review and breakdown of the knowledge needed to pass the CAPM® Certification Exam. </li>
                <li>Convenient <%# City %> CAPM® Examp Prep Class location. </li>
                <li>Critical Exam Taking Techniques</li>
                <li>Memory enhancement techniques </li>
                <li>In class accelerated learning techniques using audio, visual and kinesthetic approaches</li>
                <li>Over 550+ practice questions</li>
                <li>CAPM® Exam prep study guides</li>
                <li>PMI Approved 36 contact hour CAPM® Exam Certification Course</li>
        </ul>
    </asp:Panel> 
    <asp:Panel runat="server" ID="pnlRssDetails" Visible="true">
        <uc1:CmsPageContent ID="CmsLocationContent" runat="server" />
    </asp:Panel>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="RightContent" ID="rightContent">
   <uc1:ClassHeader ID="ClassHeader1" ClassType="CAPM" ShowImage="false" runat="server" />
<fieldset class="locationSchedule wrapper">
<h1><%# City %></h1>
<h4>CAPM® Exam Prep Class</h4>
    <telerik:RadListView ID="RadListViewClasses" runat="server" DataSourceID="classDB">
        <ItemTemplate>
            <div class="class wrapper">
                <div class="classDetailsWrapper">
                    <table class="classDetailsTable">
                        <tr>
                            <td class="classTitle">
                            CAPM® Exam Prep
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
     <table>
        <tr>
            <td valign="top"><p><asp:Image runat="server" ID="imgHotel" /></p></td>
        </tr>
        <tr>
            <td valign="top"><p><b><%# this.Hotel %></b><br />
            <%# this.HotelAddress%><br />
            <%# this.HotelNumber%><br />
            <asp:HyperLink runat="server" ID="hypHotelWebsite" Target="_blank">web site</asp:HyperLink><br /><br />
            <%# this.HotelDescription%><br /></p>
            </td>
        </tr>
    </table>
    <asp:AccessDataSource ID="classDB" runat="server" 
    DataFile="~/App_Data/classes_v2.mdb" SelectCommand="
    SELECT classes.ClassID, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.*, Locations.LocationDesc as City,Locations.LocationSeo, classes.HOT, 
    iif (DaysOfWeek.DaysOfWeekID =1,
    Format(classes.ClassDate,&quot;mmm d&quot;) & &quot; - &quot; & Format(classes.ClassDate+3,&quot;d&quot;) & &quot;, &quot; & Format(classes.ClassDate,&quot;yyyy&quot;)  
    , Format(classes.ClassDate,&quot;mmm d&quot;) & &quot;, &quot; &  
    iif(Format(classes.ClassDate,&quot;mm&quot;) <> Format(classes.ClassDate+1,&quot;mm&quot;), Format(classes.ClassDate+1,&quot;mmm&quot;) & &quot; &quot;, &quot;&quot;) & Format(classes.ClassDate+1,&quot;d&quot;) & &quot; & &quot;  &
    iif(Format(classes.ClassDate+1,&quot;mm&quot;) <> Format(classes.ClassDate+7,&quot;mm&quot;), Format(classes.ClassDate+7,&quot;mmm&quot;) & &quot; &quot;, &quot;&quot;) & Format(classes.ClassDate+7,&quot;d&quot;) & &quot;, &quot; &
    iif(Format(classes.ClassDate+7,&quot;mm&quot;) <> Format(classes.ClassDate+8,&quot;mm&quot;), Format(classes.ClassDate+8,&quot;mmm&quot;) & &quot; &quot;, &quot;&quot;) & Format(classes.ClassDate+8,&quot;d&quot;) 
    ) as ClassDate,  
    classes.ClassDate as dtClassDate,  
    classes.Comment,
    classes.SeatsAvailable, classes.numdays, classes.ClassDaysID
    FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID
    WHERE (((classes.ClassDate)&gt;=Now()))
    AND classes.ClassTypeID=5
    and Locations.LocationSeo = @Location
    AND DaysOfWeekId = 1
    ORDER BY classes.ClassDate;">
    <SelectParameters>
        <asp:Parameter Name="Location"/>
     </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>
