<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="location-six-sigma-green-belt-old.aspx.cs" Inherits="P3WebApp.location_sixsigma_green_old" MasterPageFile="~/Site.Master" %>
<%@ Register src="ClassHeader.ascx" tagname="ClassHeader" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
    <title><%=City %> Lean Six Sigma Green Belt Training | Lean Six Sigma Green Belt Courses</title>
<meta name="description" content="We have Lean Six Sigma Green Belt Certification Classes and Lean Six Sigma Green Belt Courses Available in the <%=City %> Area. We Offer the Highest Quality Lean Six Sigma Green Belt Training in <%=City %>, Guaranteed!" />
<meta name="keywords" content="pmp certification, pmp, pmp training, pmp certificate, pmp boot camp, pmp exam prep, pmp certification training, pmi, pmp exam questions, pmi certification, project management certification, pmp certification requirements, pmi certification, project management professional certification, pmi pmp, certification pmp, pmp certification exam, pmp certified, pmi pmp certification, pmp requirements, pmp certifications, pmp cert, pmp certification prep, pmp education, pmp certification class, pmp certification test, PMP Exam, PMP Exam Prep, PMP Course, PMP Online Course, PMP Certification Training, PMP Training, Online PMP Training, PMP Preparation, PMP Free, PMP Practice Question, PMI Exam, PMI Course, PMI Online Course, PMI Certification Training, PMI Training, Online PMI Training, Project Management Certification PMP, Project Management Certification, Certification Project Management, Project Management Training, pmp, pmp exam, pmp exam prep, pmp bootcamp, pmp exam preparation, pmp prep, pmi pmp exam, pmp exam simulation, project management professional exam, pmp exam training, pmp prep courses, online pmp exam prep, pmp questions, pmp test, pmp training, pmp certification training, pmi training, pmp examination, pmi certification training, pmi pmp training" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
    <img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
<h1 style="text-align:center"><%=City %> Lean Six Sigma Green Belt Class</h1>
<uc1:ClassHeader ID="ClassHeader1" ClassType="L6GI" runat="server" />
         <p>
                       The ACCELERATED LEAN SIX SIGMA GREEN BELT TRAINING PROGRAM AND METHODOLOGY© allows students to complete certification requirements faster than traditional Six Sigma and Lean training programs. We have the only nationally recognized program that has created a recognized Lean Six Sigma Body of knowledge that is based on the ASQ Six Sigma Black Belt Body of Knowledge. See the international award at <a href="http://www.lean6.org">www.lean6.org</a>.</p>
                             <p>
                             Lean Six Sigma combines two of the most powerful improvement methodologies in modern history – Six Sigma Methodology and Lean Thinking.  This course is designed for business professionals who have significant experience in business operations and are capable of working independently.
                             </p>
                             <p>
                             We offer a unique 1-2-3 program.  
                             </p>
                             <ul>
                             <li>Phase 1 is an intensive instructor-led workshop. </li>
                             <li>Phase 2 is comprised of on-line homework and an on-line exam.</li>
                             <li>Phase 3 is the practical application.  Your on-line instructor will mentor you as you complete two Green Belt level projects and a Lean Six Sigma article. </li>
                             </ul>

    <p class=" style4"><b><%=City %> Lean Six Sigma Green Belt Class Location:</b></p>
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
     <p class=" style4"><b><%=City %> Lean Six Sigma Green Belt Class Schedule</b></p>
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
            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                <ItemTemplate>
                    <nobr><asp:Label ID="Label4" Font-Size="Small" runat="server" Text='<%# Bind("ClassDate") %>'></asp:Label></nobr>
                </ItemTemplate>
            </telerik:GridTemplateColumn>                                       
            <telerik:GridTemplateColumn HeaderText="Days" SortExpression="Description">
            <ItemStyle HorizontalAlign="Center"></ItemStyle>
            <HeaderStyle Width="130px" />
                <ItemTemplate>
                    <asp:Label ID="Label2" Font-Size="Small" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                </ItemTemplate>
            </telerik:GridTemplateColumn>
             <telerik:GridTemplateColumn HeaderText="Price" >
             <ItemStyle HorizontalAlign="Center"></ItemStyle>
             <HeaderStyle Width="130px" />
                <ItemTemplate>
                    <span style="font-weight: bold; font-size:small;"><%=ClassCost %></span>
                </ItemTemplate>
            </telerik:GridTemplateColumn>
            <telerik:GridTemplateColumn HeaderText="Register Now">
            <HeaderStyle Width="130px" />
                <ItemTemplate>
                <asp:imagebutton runat="server" ImageUrl="~/images/register_now.jpg"  ToolTip="Register now for this class" ID="ibtnRegister"  CommandArgument='<%#Eval("ClassID") %>' PostBackUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' />
                    <%--<asp:HyperLink runat="server" ToolTip="Register for this class" ID="hypRegister" CssClass="GridItemHyperlink" NavigateUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' ><nobr>Register Now</nobr></asp:HyperLink>--%>
                </ItemTemplate>
            </telerik:GridTemplateColumn>
        </Columns>
    </MasterTableView>
    </telerik:RadGrid>
    <p class=" style4"><b><a href="lean-six-sigma-green-belt.aspx">Click here for our full schedule</a></b></p>
     <p>&nbsp;</p>
    <asp:AccessDataSource ID="classDB" runat="server" 
    DataFile="~/App_Data/classes_v2.mdb" SelectCommand="
    SELECT classes.ClassID, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.*, Locations.LocationDesc as City,Locations.LocationSeo, classes.HOT, 
    Format(classes.ClassDate,&quot;mmm d&quot;) & &quot; - &quot; & Format(classes.ClassDate+2,&quot;d&quot;) & &quot;, &quot; & Format(classes.ClassDate,&quot;yyyy&quot;) as ClassDate,  
    classes.SeatsAvailable, classes.numdays, classes.ClassDaysID
    FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID
    WHERE (((classes.ClassDate)&gt;=Now()))
    AND classes.ClassTypeID=6
    and Locations.LocationSeo = @Location
    ORDER BY classes.ClassDate;">
    <SelectParameters>
        <asp:Parameter Name="Location"/>
    </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>
