<%@ Page Language="C#" AutoEventWireup="true" Inherits="ProjectManagementTrainingOnline" Codebehind="pmp-classes-weekend.aspx.cs" MasterPageFile="~/Site.Master" %>
<%@ Register src="ClassHeader.ascx" tagname="ClassHeader" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>Project Management Training | PMP Certification Training | PMP Training</title>
<meta name="description" content="Signup For Project Management Training Here! Start Your PMP Certification Training With Us And Save! Pinnacle 3 Learning Offers The Best PMP Training Classes Available With a 98% Pass Rate!" />
<meta name="keywords" content="project management training, pmp certification, pmp certification training, pmp training" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
                	    <h1 style="text-align:center">PMP® Exam Prep Live - Online</h1>
                        <uc1:ClassHeader ID="ClassHeader1" runat="server" ClassType="PMPLive" />
                        <h2><span class="style3">Classes are Live Instructor Led via Online</span></h2>
                         <p><span class="style3">Class Details</span></p>
                    	 <br />
                         <p>
                        We deliver the same content and materials as the classroom, instructor-led, live, in real time, via the Internet. You will talk and interact with your instructor and your classmates, but from the comfort and convenience of your location. No need to travel and classes are available to you no matter where you live. In this course, you'll gain the knowledge needed to pass the Project Management Institutes PMP® Certification Exam. The course is based on the nine Knowledge Areas of the Guide to the Project Management Body of Knowledge (PMBOK® Guide) and the five process groups - Initiating, Planning, Executing, Monitoring and Controlling, and Closing as well as Critical Exam Taking Techniques. This course will provide attendees with practical information and skill enhancing tips and techniques that can be applied immediately to the project work environment. Our study strategy will increase your comprehension and retention of the key elements of each knowledge area ensuring you are prepared to pass the detailed exam and earn your Project Management Professional (PMP®) Credential. </p>
                            <p class=" style4"><b>The Project Management Professional ® Exam Prep Course includes:</b></p>
                            <ul>
                            <li>Instructor-led class, live, in realtime, via internet</li>
                                   <li>Pre-course &quot;Blueprint For Success&quot;</li>
                                   <li>Online test simulator</li>
                                   <li>Detailed review of the knowledge needed to pass the PMP® Certification Exam. </li>
                                   <li>Critical Exam Taking Techniques</li>
                                   <li>Memory enhancement techniques </li>
                                   <li>In class accelerated learning techniques using audio, visual and kinesthetic approaches</li>
                                   <li>Over 550+ practice questions</li>
                                   <li>PMI Approved 36 contact hour PMP® Exam Certification Course</li>
                            </ul>
                            <h2><span class="style3">Enroll in a Live PMP Class Now</span></h2>
                            <ul>
                            <li>Attend class from any computer with an Internet connection (PC or Mac)</li>
                            <li>You will receive instant email confirmation and a PMP certified instructor will follow-up after enrollment</li>
                            <li>Our Exam Pass Guarantee included with all classes</li>
                            <li>System Requirements: Computer with Internet access</li>
                            <li>Class Time: 11AM to 5PM (EST)</li>
                            <li>Class Days: Saturday and Sunday, Two Consecutive Weekends</li>
                            </ul>
                            <%-- <p class=" style4" style="text-align:center">
                           To Register for this Class, call <strong>888-808-4PMP(4767)</strong><br>or see the Schedule and Register Online here:</p>--%>
                      
                    <p><span class="style2"><span class="style1"><span class="style3">Class Schedule</span> &nbsp;</span>&nbsp;&nbsp;</span></p>
                    	 <br />
                        <telerik:RadAjaxManager runat="server" ID="RadAjaxManager" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
                        <AjaxSettings>
                            <telerik:AjaxSetting AjaxControlID="RadGrid1">
                                <UpdatedControls>
                                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" />
                                </UpdatedControls>
                            </telerik:AjaxSetting>
                            <telerik:AjaxSetting AjaxControlID="cmbCities">
                                <UpdatedControls>
                                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" />
                                </UpdatedControls>
                            </telerik:AjaxSetting>
                            <telerik:AjaxSetting AjaxControlID="cmbMonths">
                                <UpdatedControls>
                                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" />
                                </UpdatedControls>
                            </telerik:AjaxSetting>
                             <telerik:AjaxSetting AjaxControlID="cmbDays">
                                <UpdatedControls>
                                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" />
                                </UpdatedControls>
                            </telerik:AjaxSetting>
                        </AjaxSettings>
                        </telerik:RadAjaxManager>
                        <table class="TelerikClassGrid">
                            <tr>
                                <td align="right">Month: </td>
                                <td><telerik:RadComboBox runat="server" ID="cmbMonths" DataSourceID="DatesDataSource" DataTextField="MonthName" DataValueField="MonthName" AutoPostBack="true" Width="80px">
                                <Items>
                                    <telerik:RadComboBoxItem Value="[All]" />
                                </Items>
                                </telerik:RadComboBox></td>
                                <td width="200px">&nbsp;</td>
                                <td align="right" width="200px">
                                    <a href="pmp-certification-training.aspx"><img src="images/btn_PreferWeekdays.jpg" border="0" /></a>
                                </td>
                            </tr>
                        </table>
                        <telerik:RadAjaxLoadingPanel runat="server" ID="RadAjaxLoadingPanel1" Skin="Default" ></telerik:RadAjaxLoadingPanel>
                        <telerik:RadGrid ID="RadGrid1" runat="server" AutoGenerateColumns="false" Skin="Web20" DataSourceID="classDB"
                                 GridLines="None" BorderWidth="0px" CssClass="TelerikClassGrid" AllowSorting="true">
                                <ClientSettings EnableRowHoverStyle="true">
                                 <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="True" ScrollHeight="350px"></Scrolling>
                                </ClientSettings>
                                <MasterTableView DataKeyNames="ClassID" Width="100%">
                                <HeaderStyle Font-Size="Medium" HorizontalAlign="Center"  Font-Bold="True" />
                                <ItemStyle CssClass="TelerikItem"/>
                                <AlternatingItemStyle CssClass="TelerikItem" />
                                    <Columns>
                                        <telerik:GridTemplateColumn HeaderText="Date" SortExpression="ClassDate">
                                        
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" Font-Size="Small" runat="server" Text='<%# Bind("ClassDate") %>'></asp:Label>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="City, State" SortExpression="City" >
                                        <HeaderStyle Width="100px" />
                                            <ItemStyle Font-Bold="true" />
                                            <ItemTemplate>
                                            <asp:Label ID="Label5" Font-Size="Small" runat="server" Text='Live Online'></asp:Label>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>                                        
                                        <telerik:GridTemplateColumn HeaderText="Days" SortExpression="Description">
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <HeaderStyle Width="95px" />
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" Font-Size="Small" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="Price" >
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <HeaderStyle Width="80px" />
                                            <ItemTemplate>
                                               <span style="font-weight: bold; font-size:small;"><%=ClassCost %></span>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="Register">
                                        <HeaderStyle Width="100px" />
                                            <ItemTemplate>
                                            <asp:imagebutton runat="server" ImageUrl="~/images/register_now.jpg"  ToolTip="Register now for this class" ID="ibtnRegister"  CommandArgument='<%#Eval("ClassID") %>' PostBackUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' />
                                                <%--<asp:HyperLink runat="server" ToolTip="Register for this class" ID="hypRegister" CssClass="GridItemHyperlink" NavigateUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' ><nobr>Register Now</nobr></asp:HyperLink>--%>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                    </Columns>
                                </MasterTableView>
                                </telerik:RadGrid>
                               
                            <asp:AccessDataSource ID="DatesDataSource" runat="server" 
                                DataFile="~/App_Data/classes_v2.mdb" SelectCommand="
                                SELECT Format(classes.ClassDate,&quot;mmm&quot;) as MonthName, Format(classes.ClassDate,&quot;mm&quot;) AS monthnum
                            FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID
                            WHERE (((classes.ClassDate)&gt;=Now()))
                            AND classes.ClassTypeID=8
                            GROUP BY Format(classes.ClassDate,&quot;mmm&quot;), Format(classes.ClassDate,&quot;mm&quot;)
                            UNION 
                            Select '[All]', 0 From Classes
                            ORDER BY 2
                            "
                            >
                            </asp:AccessDataSource>
                            <asp:AccessDataSource ID="classDB" runat="server" 
                                DataFile="~/App_Data/classes_v2.mdb" SelectCommand="
                                SELECT classes.ClassID, ClassType.classTypeDesc, DaysOfWeek.Description,  Locations.LocationDesc as City,Locations.LocationSeo, classes.HOT, 
Format(classes.ClassDate,&quot;mmm d&quot;) & &quot;, &quot; &  
iif(Format(classes.ClassDate,&quot;mm&quot;) <> Format(classes.ClassDate+1,&quot;mm&quot;), Format(classes.ClassDate+1,&quot;mmm&quot;) & &quot; &quot;, &quot;&quot;) & Format(classes.ClassDate+1,&quot;d&quot;) & &quot; & &quot;  &
iif(Format(classes.ClassDate+1,&quot;mm&quot;) <> Format(classes.ClassDate+7,&quot;mm&quot;), Format(classes.ClassDate+7,&quot;mmm&quot;) & &quot; &quot;, &quot;&quot;) & Format(classes.ClassDate+7,&quot;d&quot;) & &quot;, &quot; &
iif(Format(classes.ClassDate+7,&quot;mm&quot;) <> Format(classes.ClassDate+8,&quot;mm&quot;), Format(classes.ClassDate+8,&quot;mmm&quot;) & &quot; &quot;, &quot;&quot;) & Format(classes.ClassDate+8,&quot;d&quot;) 

 as ClassDate, 
                                classes.SeatsAvailable, classes.numdays, classes.ClassDaysID
                            FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID
                            WHERE (((classes.ClassDate)&gt;=Now()))
                            AND classes.ClassTypeID=8
                            AND Format(classes.ClassDate,&quot;mmm&quot;) =  iif(@Month='[All]',Format(classes.ClassDate,&quot;mmm&quot;),@Month)
                            ORDER BY classes.ClassDate;">
                            <SelectParameters>
                                <asp:ControlParameter Name="Month" PropertyName="SelectedValue" ControlID="cmbMonths" />
                            </SelectParameters>
                            </asp:AccessDataSource>


                            <p>What we believe is a significant differentiator is our <b>T.rusted A.dvisor P.rogram&trade;</b> that allows you to <b>T.A.P.&trade;</b> into the experience and insights of our instructors via email and telephone support prior, during and following class.  Because at Pinnacle 3 we believe, You aren’t done with class, until you pass!&trade;</p>
                            <p>
                            The objective of this course is to prepare you for the Project Management Professional (PMP®) examination. We are so confident that after our 4 Day Instructor led PMP Exam Prep Class you will pass the exam that we guarantee it. </p>
                            <ul>
                            <li><a href="pmp-certification-prep-faqs.aspx">Find more information on the PMP® Certification Exam here</a> 
                            </li>
                            </ul>  

</asp:Content>