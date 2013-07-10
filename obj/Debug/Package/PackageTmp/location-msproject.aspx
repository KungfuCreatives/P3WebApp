<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="location-msproject.aspx.cs" Inherits="P3WebApp.location_msproject" MasterPageFile="~/Site.Master" %>
<%@ Register src="ClassHeader.ascx" tagname="ClassHeader" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
    <title><%=City %> Microsoft Project Training | PMI Prep Courses</title>
<meta name="description" content="We have PMP Certification Classes and PMP Exam Prep Courses Available in the <%=City %> Area. We Offer the Highest Quality PMP Training in <%=City %>, Guaranteed!" />
<meta name="keywords" content="pmp certification, pmp, pmp training, pmp certificate, pmp boot camp, pmp exam prep, pmp certification training, pmi, pmp exam questions, pmi certification, project management certification, pmp certification requirements, pmi certification, project management professional certification, pmi pmp, certification pmp, pmp certification exam, pmp certified, pmi pmp certification, pmp requirements, pmp certifications, pmp cert, pmp certification prep, pmp education, pmp certification class, pmp certification test, PMP Exam, PMP Exam Prep, PMP Course, PMP Online Course, PMP Certification Training, PMP Training, Online PMP Training, PMP Preparation, PMP Free, PMP Practice Question, PMI Exam, PMI Course, PMI Online Course, PMI Certification Training, PMI Training, Online PMI Training, Project Management Certification PMP, Project Management Certification, Certification Project Management, Project Management Training, pmp, pmp exam, pmp exam prep, pmp bootcamp, pmp exam preparation, pmp prep, pmi pmp exam, pmp exam simulation, project management professional exam, pmp exam training, pmp prep courses, online pmp exam prep, pmp questions, pmp test, pmp training, pmp certification training, pmi training, pmp examination, pmi certification training, pmi pmp training" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
    <img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
<h1 style="text-align:center"><%=City %> Microsoft Project Class</h1>
<uc1:ClassHeader ID="ClassHeader1" ClassType="MS Project" 
        runat="server" />
        <p class=" style4"><b><%=City %> Microsoft Project Class Details</b></p>
<h3>Introduction</h3>
                            <p>Project management is a growing discipline that spans many roles and departments within a wide variety of organizations. Microsoft Office Project   2007 has helped users around the world manage their businesses. In fact, today   over 20 million user licenses of Office Project 2007 have been sold, making it   the leading project management application in the world. As project management   has grown, organizations have asked Microsoft to help make it easier to identify   individuals that have knowledge and expertise in the field and with Office   Project 2007 and the Microsoft Office Enterprise Project Management Solution.   Office Project 2007 Certification program was created to help make the   identification of skilled project managers easier.</p>

                            <h3>More Than Product Training</h3>
                            <p>Microsoft Office Project 2007 certification is much more than just certification on a product. This program is specifically designed to help   project managers apply and fully benefit from the leading standard in project   management best practices and methodologies as established by the Project   Management Institute (PMI). Microsoft Office Project 2007 certification is   aligned with PMI's &quot;A Guide to the Project Management Body of Knowledge&quot; (PMBOK   Guide), enabling project managers that build on this foundational work to   translate their skills directly to their day-to-day activities. The result is   better project outcomes, greater efficiency, and maximum value from our   products. </p>


    <p class=" style4"><b><%=City %> Microsoft Project Class Location:</b></p>
    <table>
        <tr>
            <td valign="top"><p><asp:Image runat="server" ID="imgHotel" /></p></td>
            <td valign="top"><p><b><%=Hotel %></b><br />
                 <%=HotelAddress %><br />
                 <%=HotelNumber %><br />
                 <asp:HyperLink runat="server" ID="hypHotelWebsite" Target="_blank">web site</asp:HyperLink><br /><br />
                 <%=HotelDescription %><br /></p>
                 </td>
        </tr>
    </table>
     <p class=" style4"><b><%=City %> Microsoft Project Class Schedule</b></p>
     <br />
     <telerik:RadGrid ID="RadGrid1" runat="server" AutoGenerateColumns="false" Skin="Web20" DataSourceID="classDB"
        GridLines="None" BorderWidth="0px" CssClass="TelerikClassGrid" AllowSorting="true">
    <ClientSettings EnableRowHoverStyle="true">
        <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="True"></Scrolling>
    </ClientSettings>
    <MasterTableView DataKeyNames="ClassID" Width="100%">
    <HeaderStyle Font-Size="Medium" HorizontalAlign="Center"  Font-Bold="True" />
    <ItemStyle CssClass="TelerikItem"/>
    <AlternatingItemStyle CssClass="TelerikItem" />
        <Columns>
            <telerik:GridTemplateColumn HeaderText="Date" SortExpression="ClassDate">
            <HeaderStyle Width="130px" />
                <ItemTemplate>
                    <nobr><asp:Label ID="Label4" Font-Size="Small" runat="server" Text='<%# Bind("ClassDate") %>'></asp:Label></nobr>
                </ItemTemplate>
            </telerik:GridTemplateColumn>                                       
            <telerik:GridTemplateColumn HeaderText="Days" SortExpression="Description">
            <ItemStyle HorizontalAlign="Center"></ItemStyle>
            <HeaderStyle Width="100px" />
                <ItemTemplate>
                    <asp:Label ID="Label2" Font-Size="Small" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                </ItemTemplate>
            </telerik:GridTemplateColumn>
            <telerik:GridTemplateColumn HeaderText="Register Now">
            <ItemStyle HorizontalAlign="Center"></ItemStyle>
            <HeaderStyle Width="130px" />
                <ItemTemplate>
                <asp:imagebutton runat="server" ImageUrl="~/images/register_now.jpg"  ToolTip="Register now for this class" ID="ibtnRegister"  CommandArgument='<%#Eval("ClassID") %>' PostBackUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' />
                    <%--<asp:HyperLink runat="server" ToolTip="Register for this class" ID="hypRegister" CssClass="GridItemHyperlink" NavigateUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' ><nobr>Register Now</nobr></asp:HyperLink>--%>
                </ItemTemplate>
            </telerik:GridTemplateColumn>
        </Columns>
    </MasterTableView>
    </telerik:RadGrid>
     <p class=" style4"><b><a href="MS_Project_2007.aspx">Click here for our full schedule</a></b></p>
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
    classes.SeatsAvailable, classes.numdays, classes.ClassDaysID
    FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID
    WHERE (((classes.ClassDate)&gt;=Now()))
    AND classes.ClassTypeID=2
    and Locations.LocationSeo = @Location
    ORDER BY classes.ClassDate;">
    <SelectParameters>
        <asp:Parameter Name="Location"/>
    </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>
