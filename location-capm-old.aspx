<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="location-capm-old.aspx.cs" Inherits="P3WebApp.location_capm_old" MasterPageFile="~/Site.Master" %>
<%@ Register src="ClassHeader.ascx" tagname="ClassHeader" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
    <title><%# City %> CAPM® Certification | <%# City %> CAPM® Training | <%# City %> CAPM® Class</title>
<meta name="description" content="We have CAPM® Certification Classes and CAPM® Exam Prep Courses Available in the <%# City %> Area. We Offer the Highest Quality CAPM® Training in <%# City %>, Guaranteed!" />
<meta name="keywords" content="capm certification, capm, capm training, capm certificate, capm boot camp, capm exam prep, capm certification training, pmi, capm exam questions, pmi certification, project management certification, capm certification requirements, pmi certification, project management professional certification, pmi capm, certification capm, capm certification exam, capm certified, pmi capm certification, capm requirements, capm certifications, capm cert, capm certification prep, capm education, capm certification class, capm certification test, CAPM® Exam, CAPM® Exam Prep, CAPM® Course, CAPM® Online Course, CAPM® Certification Training, CAPM® Training, Online CAPM® Training, CAPM® Preparation, CAPM® Free, CAPM® Practice Question, PMI Exam, PMI Course, PMI Online Course, PMI Certification Training, PMI Training, Online PMI Training, Project Management Certification CAPM®, Project Management Certification, Certification Project Management, Project Management Training, capm, capm exam, capm exam prep, capm bootcamp, capm exam preparation, capm prep, pmi capm exam, capm exam simulation, project management professional exam, capm exam training, capm prep courses, online capm exam prep, capm questions, capm test, capm training, capm certification training, pmi training, capm examination, pmi certification training, pmi capm training" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
    <img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
<h1 style="text-align:center"><%# City %> Certified Associate in Project Management (CAPM®) Exam Prep Class</h1>
<uc1:ClassHeader ID="ClassHeader1" ClassType="CAPM" 
        runat="server" />
        <p class=" style4"><b><%# City %> CAPM® Class Details</b></p>
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
    <p class=" style4"><b><%# City %> CAPM® Exam Prep Class Location:</b></p>
    <table>
        <tr>
            <td valign="top"><p><asp:Image runat="server" ID="imgHotel" /></p></td>
            <td valign="top"><p><b><%# this.Hotel %></b><br />
                 <%# this.HotelAddress%><br />
                 <%# this.HotelNumber%><br />
                 <asp:HyperLink runat="server" ID="hypHotelWebsite" Target="_blank">web site</asp:HyperLink><br /><br />
                 <%# this.HotelDescription%><br /></p>
                 </td>
        </tr>
    </table>
     <p class=" style4"><b><%# City %> CAPM® Exam Prep Class Schedule</b></p>
     <br />
     <telerik:RadAjaxManager runat="server" ID="RadAjaxManager" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
                        <AjaxSettings>
                            <telerik:AjaxSetting AjaxControlID="RadGrid1">
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
                               <%-- <td>&nbsp;</td>
                                
                                <td align="right">Days: </td>
                                <td><telerik:RadComboBox runat="server" ID="cmbDays" AutoPostBack="true" Width="100px">
                                <Items>
                                     <telerik:RadComboBoxItem Value="[All]" Text="[All]" />
                                    <telerik:RadComboBoxItem Value="Mon-Thu" Text="Weekdays" Selected="true" />
                                    <telerik:RadComboBoxItem Value="Sat-Sun x 2" Text="Weekends"  />
                                </Items>
                                </telerik:RadComboBox></td>--%>
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
            <HeaderStyle Width="220px" />
                <ItemTemplate>
                    <nobr><asp:Label ID="Label4" Font-Size="Small" runat="server" Text='<%# Bind("ClassDate") %>'></asp:Label></nobr>
                </ItemTemplate>
            </telerik:GridTemplateColumn>                                       
            <telerik:GridTemplateColumn HeaderText="Days" SortExpression="Description">
            <HeaderStyle Width="100px" />
            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                <ItemTemplate>
                    <asp:Label ID="Label2" Font-Size="Small" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                </ItemTemplate>
            </telerik:GridTemplateColumn>
            <telerik:GridTemplateColumn HeaderText="Price" >
            <HeaderStyle Width="100px" />
            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                <ItemTemplate>
                    <span style="font-weight: bold; font-size:small;"><%# GetPriceText(DateTime.Parse(Eval("dtClassDate").ToString()))%></span>
                </ItemTemplate>
            </telerik:GridTemplateColumn>
            <telerik:GridTemplateColumn HeaderText="Register">
            <HeaderStyle Width="140px" />
            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                <ItemTemplate>
                <asp:imagebutton runat="server" ImageUrl="~/images/register_now.gif"  ToolTip="Register now for this class" ID="ibtnRegister" CommandName='<%# GetPrice(DateTime.Parse(Eval("dtClassDate").ToString())) %>'  CommandArgument='<%#Eval("ClassID") %>' OnClick="RegisterButton_Click"  /><br />
                    <%--<asp:HyperLink runat="server" ToolTip="Register for this class" ID="hypRegister" CssClass="GridItemHyperlink" NavigateUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' ><nobr>Register Now</nobr></asp:HyperLink>--%>
                </ItemTemplate>
            </telerik:GridTemplateColumn>
        </Columns>
    </MasterTableView>
    </telerik:RadGrid>
     <p class=" style4"><b><a href="pmp-certification-training.aspx">Click here for our full schedule</a></b></p>
     <p>&nbsp;</p>
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
    AND Format(classes.ClassDate,&quot;mmm&quot;) =  iif(@Month='[All]',Format(classes.ClassDate,&quot;mmm&quot;),@Month)
    AND DaysOfWeekId = 1
    ORDER BY classes.ClassDate;">
    <SelectParameters>
        <asp:Parameter Name="Location"/>
        <asp:ControlParameter Name="Month" PropertyName="SelectedValue" ControlID="cmbMonths" />
    </SelectParameters>
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
</asp:Content>
