<%@ Page Language="C#" AutoEventWireup="true" Inherits="CapmTraining" Codebehind="certified-associate-in-project-management.aspx.cs" MasterPageFile="~/Site.Master" %>
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
                	    <h1 style="text-align:center">Certified Associate in Project Management</h1>
                        <uc1:ClassHeader ID="ClassHeader1" runat="server" ClassType="CAPM" />
                         <p><span class="style3">Class Details</span></p>
                    	 <br />
                         <p>
                        In this course, you'll gain the essential preparation needed to pass the CAPM® Exam. The course is based on the nine Knowledge Areas of the Guide to the CAPM® Body of Knowledge(PMBOK® Guide) and the five process groups - Initiating, Planning, Executing, Monitoring and Controlling, and Closing as well as Critical Exam Taking Techniques. This course will  provide attendees with practical information and skill enhancing tips and techniques that can be applied immediately to the project work environment. 
                        Our study strategy will increase your comprehension and retention of the key elements of each knowledge area ensuring you are prepared to pass the detailed exam and earn your CAPM® Credential. </p>
                            <p class=" style4"><b>The CAPM® Exam Prep Course includes:</b></p>
                            <ul>
                                <li>PMBOK® Guide-Fourth Edition</li>
                                   <li>Pre-course &quot;Blueprint For Success&quot;</li>
                                   <li>Online test simulator</li>
                                   <li>Detailed review and breakdown of the knowledge needed to pass the CAPM® Exam. </li>
                                   <li>Critical Exam Taking Techniques</li>
                                   <li>Memory enhancement techniques </li>
                                   <li>In class accelerated learning techniques using audio, visual and kinesthetic       approaches</li>
                                   <li>Over 550+ practice questions</li>
                                   <li>PMP Exam prep study guides</li>
                                   <li>PMI Approved 36 contact hour PMP® Exam Certification Course</li>
                            </ul>
                      
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
                                <td>&nbsp;</td>
                                
                                <td align="right">City: </td>
                                <td><telerik:RadComboBox runat="server" ID="cmbCities" DataSourceID="CitiesDataSource" DataTextField="City" DataValueField="City" AutoPostBack="true" Width="120px">
                                <Items>
                                    <telerik:RadComboBoxItem Value="[All]" />
                                </Items>
                                </telerik:RadComboBox></td>
                                <td>&nbsp;</td>
                                
                               <%--
                                Adam removed this dropdown from the table on 10/5/2011 to replace weekends with a link to the Online Live class schedule
                                <td align="right">Days: </td>
                                <td><telerik:RadComboBox runat="server" ID="cmbDays" AutoPostBack="true" Width="100px">
                                <Items>
                                   <telerik:RadComboBoxItem Value="[All]" Text="[All]" />
                                    <telerik:RadComboBoxItem Value="Mon-Thu" Text="Weekdays" Selected="true" />
                                    <telerik:RadComboBoxItem Value="Sat-Sun x 2" Text="Weekends"  />
                                </Items>
                                </telerik:RadComboBox>
                                </td>--%>
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
                                        <HeaderStyle Width="140px" />
                                            <ItemStyle Font-Bold="true" />
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" Font-Size="Small" runat="server" ToolTip="More info about this city" NavigateUrl='<%#Eval("LocationSeo")+"-capm-training-class" %>' Text='<%# Bind("City") %>' ></asp:HyperLink>
                                                <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%#  Eval("HOT") %>'  ToolTip="HOT ITEM! Discount applied to this class."  />--%>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>                                        
                                        <telerik:GridTemplateColumn HeaderText="Days" SortExpression="Description">
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <HeaderStyle Width="70px" />
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" Font-Size="Small" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="Price" >
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <HeaderStyle Width="85px" />
                                            <ItemTemplate>
                                                <span style="font-weight: bold; font-size:small;"><%# GetPriceText(DateTime.Parse(Eval("dtClassDate").ToString())) %></span>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="Register">
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <HeaderStyle Width="100px" />
                                            <ItemTemplate>
                                            <asp:imagebutton runat="server" ImageUrl="~/images/register_now.gif"  ToolTip="Register now for this class" ID="ibtnRegister" CommandName='<%# GetPrice(DateTime.Parse(Eval("dtClassDate").ToString())) %>'  CommandArgument='<%#Eval("ClassID") %>' OnClick="RegisterButton_Click" />
                                                <%--<asp:HyperLink runat="server" ToolTip="Register for this class" ID="hypRegister" CssClass="GridItemHyperlink" NavigateUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' ><nobr>Register Now</nobr></asp:HyperLink>--%>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                    </Columns>
                                </MasterTableView>
                                </telerik:RadGrid>
                                <asp:AccessDataSource ID="CitiesDataSource" runat="server" 
                                DataFile="~/App_Data/classes_v2.mdb" SelectCommand="
                                SELECT distinct( Locations.LocationDesc) as City
                            FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID
                            WHERE (((classes.ClassDate)&gt;=Now()))
                            AND classes.ClassTypeID=5
                            UNION 
                            Select '[All]' From Classes
                            "
                            >
                            </asp:AccessDataSource>
                            <asp:AccessDataSource ID="DatesDataSource" runat="server" 
                                DataFile="~/App_Data/classes_v2.mdb" SelectCommand="
                                SELECT Format(classes.ClassDate,&quot;mmm&quot;) as MonthName, Format(classes.ClassDate,&quot;mm&quot;) AS monthnum
                            FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID
                            WHERE (((classes.ClassDate)&gt;=Now()))
                            AND classes.ClassTypeID=5
                            GROUP BY Format(classes.ClassDate,&quot;mmm&quot;), Format(classes.ClassDate,&quot;mm&quot;)
                            UNION 
                            Select '[All]', 0 From Classes
                            ORDER BY 2
                            "
                            >
                            </asp:AccessDataSource>
                            <asp:AccessDataSource ID="classDB" runat="server" 
                                DataFile="~/App_Data/classes_v2.mdb" SelectCommand="
                                SELECT classes.ClassID, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.HotelWebsite, Locations.LocationDesc as City,Locations.LocationSeo, classes.HOT, 
                                iif (DaysOfWeek.DaysOfWeekID =1,
                                Format(classes.ClassDate,&quot;mmm d&quot;) & &quot; - &quot; & Format(classes.ClassDate+3,&quot;d&quot;) & &quot;, &quot; & Format(classes.ClassDate,&quot;yyyy&quot;)  
,
Format(classes.ClassDate,&quot;mmm d&quot;) & &quot;, &quot; &  
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
                            AND Locations.LocationDesc =  iif(@City='[All]',Locations.LocationDesc,@City)
                            AND Format(classes.ClassDate,&quot;mmm&quot;) =  iif(@Month='[All]',Format(classes.ClassDate,&quot;mmm&quot;),@Month)
                            AND DaysOfWeek.DaysOfWeekId = 1
                            ORDER BY classes.ClassDate;">
                            <SelectParameters>
                                <asp:ControlParameter Name="City" PropertyName="SelectedValue" ControlID="cmbCities" />
                                <asp:ControlParameter Name="Month" PropertyName="SelectedValue" ControlID="cmbMonths" />
                            </SelectParameters>
                            </asp:AccessDataSource>
                             <%--
                            Adam removed this from the above query on 10/5/2011 to replace weekends with a link to the Online Live class schedule
                            <asp:ControlParameter Name="Days" PropertyName="SelectedValue" ControlID="cmbDays" />
                            AND DaysOfWeek.Description =  iif(@Days='[All]',DaysOfWeek.Description,@Days)
                            --%>

                            <p>What we believe is a significant differentiator is our <b>T.rusted A.dvisor P.rogram&trade;</b> that allows you to <b>T.A.P.&trade;</b> into the experience and insights of our instructors via email and telephone support prior, during and following class.  Because at Pinnacle 3 we believe, You aren’t done with class, until you pass!&trade;</p>
                            <p>
                            The objective of this course is to prepare you for the Project Management Professional (PMP®) examination. We are so confident that after our 4 Day Instructor led PMP Exam Prep Class you will pass the exam that we guarantee it. </p>
                            <ul>
                            <li><a href="pmp-certification-prep-faqs.aspx">Find more information on the PMP® Certification Exam here</a> 
                            </li>
                            </ul>  

</asp:Content>