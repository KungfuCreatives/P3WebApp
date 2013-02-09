<%@ Page Language="C#" AutoEventWireup="true" Inherits="PM_Essentials" Codebehind="PM_Essentials.aspx.cs" MasterPageFile="~/Site.Master" %>
<%@ Register src="ClassHeader.ascx" tagname="ClassHeader" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>Project Management Training | Project Manager Training Course</title>
<meta name="description" content="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">

                    	<h1 style="text-align:center">PM Essentials</h1>
                        <uc1:ClassHeader ID="ClassHeader1" runat="server" ClassType="Essentials" />

                          <p><span class="style2"><span class="style1"><span class="style3">Class Details</span> &nbsp;</span>&nbsp;&nbsp;</span></p>
                    	 <br />
                    	<p style="margin-bottom:10px; vertical-align:top;">
                            Our first level of PMP training is our Project Manager Essentials. We teach you how to apply the processes, techniques, and tools for organizing and planning your project, as well as how to execute the plan, monitor and control, and deliver and close the project successfully. The course is based on the five process groups - Initiating, Planning, Executing, Controlling, and Closing. This course includes:</p>
                        <ul>
                            <li>Introduction to Project Management</li>
                            <li>Management and Leadership Skills for New Managers </li>
                            <li>Communication and Negotiation Skills </li>
                            <li>Understand project phases and reduce risks </li>
                            <li>Create a work breakdown structure Estimate time and cost </li>
                            <li>Communicate properly and accurately with stakeholders </li>
                            <li>Monitor and control your project to measure where execution and the plan are not aligned </li>
                            <li>Properly deliver the product and close the project out </li>
                            <li>Capture lessons learned </li>
                        </ul>
                        <p>
                            These topics will guide you in knowing the fundamental best practices of project management. Our high-quality content, certified instructors, and hands-on labs, give you a comprehensive understanding of project management.                        </p>

                        <p><span class="style2"><span class="style1"><span class="style3">Class Schedule</span> &nbsp;</span>&nbsp;&nbsp;</span></p>
                    	 <br />
                        <telerik:RadGrid ID="RadGrid1" runat="server" AutoGenerateColumns="false" Skin="Web20" DataSourceID="classDB"
                                 GridLines="None" BorderWidth="0px" CssClass="TelerikClassGrid" AllowSorting="true">
                                <ClientSettings EnableRowHoverStyle="true">
                                 <Scrolling AllowScroll="false" UseStaticHeaders="True" SaveScrollPosition="True"></Scrolling>
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
                                            <ItemStyle Font-Bold="true" />
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" Font-Size="Small" runat="server" ToolTip="More info about this city" NavigateUrl='<%#Eval("LocationSeo")+"-pmessentials-training-class" %>' Text='<%# Bind("City") %>' ></asp:HyperLink>
                                                <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%#  Eval("HOT") %>' ToolTip="HOT ITEM! Discount applied to this class."  />--%>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>                                        
                                        <telerik:GridTemplateColumn HeaderText="Days" SortExpression="Description">
                                        <HeaderStyle Width="80px" />
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" Font-Size="Small" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="Register Now">
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <HeaderStyle Width="130px" />
                                            <ItemTemplate>
                                            <asp:imagebutton runat="server" ImageUrl="~/images/register_now.gif"  ToolTip="Register now for this class" ID="ibtnRegister"  CommandArgument='<%#Eval("ClassID") %>' PostBackUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' />
                                                <%--<asp:HyperLink runat="server" ToolTip="Register for this class" ID="hypRegister" CssClass="GridItemHyperlink" NavigateUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' ><nobr>Register Now</nobr></asp:HyperLink>--%>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                    </Columns>
                                </MasterTableView>
                                </telerik:RadGrid>
                            <asp:AccessDataSource ID="classDB" runat="server" 
                                DataFile="~/App_Data/classes_v2.mdb" SelectCommand="
                                SELECT classes.ClassID, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.HotelWebsite, Locations.LocationSeo, Locations.LocationDesc as City, classes.HOT, 
                                Format(classes.ClassDate,&quot;mmm d&quot;) & &quot; - &quot; & Format(classes.ClassDate+1,&quot;d&quot;) & &quot;, &quot; & Format(classes.ClassDate,&quot;yyyy&quot;)  as ClassDate, 
                                classes.SeatsAvailable, classes.numdays, classes.ClassDaysID
                            FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID
                            WHERE (((classes.ClassDate)&gt;=Now()))
                            AND classes.ClassTypeID=3
                            ORDER BY classes.ClassDate;">
                            </asp:AccessDataSource>
                         
                       
                      <p>&nbsp;</p>
</asp:Content>
