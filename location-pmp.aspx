<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="location-pmp.aspx.cs" Inherits="P3WebApp.location_pmp" MasterPageFile="~/Location.Master" %>
<%@ Register src="ClassHeader.ascx" tagname="ClassHeader" tagprefix="uc1" %>
<%@ Register src="CmsPageContent.ascx" tagname="CmsPageContent" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
    <title><%# City %> PMP Training by Pinnacle 3 Learning</title>
<meta name="description" content="Register for PMP Certification Classes and PMP Exam Prep Courses available in <%# City %>. We offer the highest-quality PMP Training, guaranteed!" />
<meta name="keywords" content="pmp certification, pmp, pmp training, pmp certificate, pmp boot camp, pmp exam prep, pmp certification training, pmi, pmp exam questions, pmi certification, project management certification, pmp certification requirements, pmi certification, project management professional certification, pmi pmp, certification pmp, pmp certification exam, pmp certified, pmi pmp certification, pmp requirements, pmp certifications, pmp cert, pmp certification prep, pmp education, pmp certification class, pmp certification test, PMP Exam, PMP Exam Prep, PMP Course, PMP Online Course, PMP Certification Training, PMP Training, Online PMP Training, PMP Preparation, PMP Free, PMP Practice Question, PMI Exam, PMI Course, PMI Online Course, PMI Certification Training, PMI Training, Online PMI Training, Project Management Certification PMP, Project Management Certification, Certification Project Management, Project Management Training, pmp, pmp exam, pmp exam prep, pmp bootcamp, pmp exam preparation, pmp prep, pmi pmp exam, pmp exam simulation, project management professional exam, pmp exam training, pmp prep courses, online pmp exam prep, pmp questions, pmp test, pmp training, pmp certification training, pmi training, pmp examination, pmi certification training, pmi pmp training" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
    <img src="images/default_06_location.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
<h1>PMP Training <%# City %></h1>
    <p class=" style4"><b>Class Details</b></p>
    <asp:Panel runat="server" ID="pnlStaticDetails">
        <p>
            In our <%# City %> PMP Exam Prep course, you'll gain the essential preparation needed to pass the Project Management Institutes PMP® Certification Exam. The <%# City %> PMP Exam Prep course is based on the nine Knowledge Areas of the Guide to the Project Management Body of Knowledge(PMBOK® Guide) and the five process groups - Initiating, Planning, Executing, Monitoring and Controlling, and Closing as well as Critical Exam Taking Techniques. This <%# City %> PMP Exam Prep class will provide attendees with practical information and skill enhancing tips and techniques that can be applied immediately to the project work environment. Our study strategy will increase your comprehension and retention of the key elements of each knowledge area ensuring you are prepared to pass the detailed exam and earn your Project Management Professional (PMP®) Credential.
        </p>
        <p class=" style4"><b>The Project Management Professional ® Exam Prep Course includes:</b></p>
        <ul>
                <li>PMP® Exam Prep Study Book</li>
                <li>Pre-course &quot;Blueprint For Success&quot;</li>
                <li>Online PMP® Exam Simulator</li>
			    <li>Over 600+ Practice PMP® Questions</li>
                <li>100% PMP® Exam Pass Guarantee</li>
                <li>Critical Exam Taking Techniques</li>
                <li>Breakfast, Lunch and Snacks Provided</li>
                <li>In Class Exercises and Accelerated Learning Techniques</li>
                <li>PMP® Eligibility Application Support</li>
                <li>PMI Approved 36 Contact Hour PMP® Exam Certification Course</li>
        </ul>
	    <p>What we believe is a significant differentiator is our <b>T.rusted A.dvisor P.rogram&trade;</b> that allows you to <b>T.A.P.&trade;</b> into the experience and insights of our instructors via email and telephone support prior, during and following class.  Because at Pinnacle 3 we believe, You aren’t done with class, until you pass!&trade;</p>
        <p>
        The objective of this course is to prepare you for the Project Management Professional (PMP®) examination. We are so confident that after our 4 Day Instructor led PMP Exam Prep Class you will pass the exam that we guarantee it. </p>
        <ul>
        <li><a href="pmp-certification-prep-faqs.aspx">Find more information on the PMP® Certification Exam here</a> 
        </li>
        </ul> 
    </asp:Panel> 
    <asp:Panel runat="server" ID="pnlRssDetails" Visible="true">
        <uc1:CmsPageContent ID="CmsLocationContent" runat="server" />
    </asp:Panel>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="RightContent" ID="rightContent">
<uc1:ClassHeader ID="ClassHeader1" ClassType="PMP" ShowImage="false" runat="server" />
<fieldset class="locationSchedule wrapper">
<h1><%# City %></h1>
<h4>PMP Exam Prep Class</h4>
    <telerik:RadListView ID="RadListViewClasses" runat="server" DataSourceID="classDB">
        <ItemTemplate>
            <div class="class wrapper">
                <div class="classDetailsWrapper">
                    <table class="classDetailsTable">
                        <tr>
                            <td class="classTitle">
                            PMP Boot Camp
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
    AND classes.ClassTypeID=1
    and Locations.LocationSeo = @Location
    AND DaysOfWeekId = 1
    ORDER BY classes.ClassDate;">
    <SelectParameters>
        <asp:Parameter Name="Location"/>
    </SelectParameters>
    </asp:AccessDataSource>
   
</asp:Content>