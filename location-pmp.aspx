<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="location-pmp.aspx.cs" Inherits="P3WebApp.location_pmp" MasterPageFile="~/Location.Master" %>
<%@ Register src="ClassHeader.ascx" tagname="ClassHeader" tagprefix="uc1" %>
<%@ Register src="CmsPageContent.ascx" tagname="CmsPageContent" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<asp:placeholder runat="server">
    <title>PMP® Certification Boot Camp Training - <%# City %></title>
<meta name="description" content="Register for PMP® Certification Boot Camp Training Classes available in <%# City %>. We offer the highest-quality PMP® Training, Guaranteed!" />
<meta name="keywords" content="pmp certification, pmp, pmp training, pmp certificate, pmp boot camp, pmp exam prep, pmp certification training, pmi, pmp exam questions, pmi certification, project management certification, pmp certification requirements, pmi certification, project management professional certification, pmi pmp, certification pmp, pmp certification exam, pmp certified, pmi pmp certification, pmp requirements, pmp certifications, pmp cert, pmp certification prep, pmp education, pmp certification class, pmp certification test, PMP Exam, PMP Exam Prep, PMP Course, PMP Online Course, PMP Certification Training, PMP Training, Online PMP Training, PMP Preparation, PMP Free, PMP Practice Question, PMI Exam, PMI Course, PMI Online Course, PMI Certification Training, PMI Training, Online PMI Training, Project Management Certification PMP, Project Management Certification, Certification Project Management, Project Management Training, pmp, pmp exam, pmp exam prep, pmp bootcamp, pmp exam preparation, pmp prep, pmi pmp exam, pmp exam simulation, project management professional exam, pmp exam training, pmp prep courses, online pmp exam prep, pmp questions, pmp test, pmp training, pmp certification training, pmi training, pmp examination, pmi certification training, pmi pmp training" />
</asp:placeholder>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
    <img src="images/default_06_location.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
<h1>PMP® Certification Boot Camp Training <%# City %></h1>
    
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" SelectedIndex="0">
            <Tabs>
                <telerik:RadTab Text="PMP Training">
                </telerik:RadTab>
                <telerik:RadTab Text="PMP Application">
                </telerik:RadTab>
                <telerik:RadTab Text="Why Choose Us?">
                </telerik:RadTab>
                <telerik:RadTab Text="PMP Reviews">
                </telerik:RadTab>
                <telerik:RadTab Text="PMP FAQ’s">
                </telerik:RadTab>
            </Tabs>
        </telerik:RadTabStrip>
        <telerik:RadMultiPage ID="RadMultiPage1" Runat="server" SelectedIndex="0">
                <telerik:RadPageView ID="RadPageViewpPmpTraining" runat="server">
                    <p class=" style4"><b>PMP® Class Details</b></p>  
                    <asp:Panel runat="server" ID="pnlStaticDetails">
                      <p>
                            <b>
                            </b>The objective of this course is to prepare you for the Project Management Professional (PMP®) Certification Examination. In our <%# City %> PMP® Certification Boot Camp, you'll gain the essential information needed to pass the PMP® Certification Exam. We are so confident that you will Pass the PMP® Exam after our 4 Day Instructor Led Boot Camp Class, We Guarantee It! </p>
                          <p>The PMP® Exam Prep course is based on the Project Management Body of Knowledge(PMBOK® Guide). This <%# City %> PMP® Boot Camp will provide attendees with practical information and skill enhancing tips and techniques that can be applied immediately to the project work environment. Our study strategy will increase your comprehension and retention of the key elements of each knowledge area ensuring you are prepared to pass the exam and earn your Project Management Professional (PMP®) Credential.
                        </p>
                          <p>****PLEASE NOTE: ALL CLASSES AFTER JULY 31st are for the PMBOK 5th Edition version of the Exam****</p>
                        <p class=" style4"><b>The Project Management Professional ® Boot Camp Course includes:</b></p>
                        <ul>
                                <li>PMP® Certification Exam Prep Study Book</li>
                                <li>Pre-course Quick Reference Guide</li>
                                <li>On-line PMP® Exam Simulator</li>
			                    <li>Over 600+ Practice PMP® Questions</li>
                                <li>100% PMP® Exam Pass Guarantee</li>
                                <li>Critical Exam Taking Techniques</li>
                                <li>Breakfast, Lunch and Snacks Provided</li>
                                <li>In Class Exercises and Accelerated Learning Techniques</li>
                                <li>PMP® Eligibility Application Support</li>
                                <li>PMI Approved 36 Contact Hours</li>
                        </ul>
	                    <p>We believe a significant differentiator is our <b>Trusted Advisor Program</b> that allows you to tap into the experience and insights of our instructors prior, during and following class.  Because at Pinnacle 3 we believe, You aren’t done with class, until you pass!</p>
                        <ul>
                        <li>Find more information on the <a href="pmp-certification-prep-faqs.aspx">PMP® Certification Exam here</a> 
                        </li>
                        </ul> 
                    </asp:Panel> 
                    <asp:Panel runat="server" ID="pnlRssDetails" Visible="true">
                        <uc1:CmsPageContent ID="CmsLocationContent" runat="server" />
                    </asp:Panel>
                    <table>
                    <tr>
                        <td><asp:Image runat="server" ID="imgHotel"  /></td>
                        <td valign="middle">
                        <b><%# this.Hotel %></b><br />
                        <%# this.HotelAddress%><br />
                        <%# this.HotelNumber%><br />
                        <asp:HyperLink runat="server" ID="hypHotelWebsite" Target="_blank">web site</asp:HyperLink><br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                        <p><%# this.HotelDescription%></p>
                        </td>
                    </tr>
                    </table>
                </telerik:RadPageView>
                <telerik:RadPageView ID="RadPageViewPmpApplication" runat="server">
                    <uc1:CmsPageContent ID="cmsPageContent_PmpApplication_General" runat="server" PageTitle="PMP Application"/> 
                    <uc1:CmsPageContent ID="cmsPageContent_PmpApplication_City" runat="server" Visible="false"/> 
                </telerik:RadPageView>
                <telerik:RadPageView ID="RadPageViewWhyUs" runat="server">
                    <uc1:CmsPageContent ID="cmsPageContent_WhyUs_General" runat="server" PageTitle="P3 Why Us?"/> 
                    <uc1:CmsPageContent ID="cmsPageContent_WhyUs_City" runat="server" Visible="false"/> 
                </telerik:RadPageView>
                <telerik:RadPageView ID="RadPageViewTestimonials" runat="server">
                    <asp:Repeater runat="server" ID="rptTestimonials" DataSourceID="xdsTestimonials" >
                        <ItemTemplate>
                        <p>
                        <b><%#XPath("reference")%></b><br />
                            <%#XPath("quote")%></p>
                        </ItemTemplate>
                    </asp:Repeater>
                     <asp:XmlDataSource runat="server" ID="xdsTestimonials" 
                         DataFile="~/App_Data/testimonials.xml" XPath="testimonials/testimonial" ></asp:XmlDataSource>
                </telerik:RadPageView>
                <telerik:RadPageView ID="RadPageViewFAQs" runat="server">
                    <uc1:CmsPageContent ID="cmsPageContent_FAQs_General" runat="server" PageTitle="PMP FAQs"/> 
                    <uc1:CmsPageContent ID="cmsPageContent_FAQs_City" runat="server" Visible="false"/> 
                </telerik:RadPageView>
            </telerik:RadMultiPage>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="RightContent" ID="rightContent">
<uc1:ClassHeader ID="ClassHeader1" ClassType="PMP" ShowImage="false" runat="server" />
<fieldset class="locationSchedule wrapper">
<h2>PMP® Certification Training Class Schedule</h2>
<telerik:RadListView ID="RadListViewClasses" runat="server" DataSourceID="classDB">
        <ItemTemplate>
            <div class="class wrapper">
                <div class="classDetailsWrapper">
                    <table class="classDetailsTable">
                        <tr>
                            <td class="classTitle">
                            PMP® Boot Camp
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