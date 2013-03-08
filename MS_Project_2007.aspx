<%@ Page Language="C#" AutoEventWireup="True" Inherits="MS_Project_2007" Codebehind="~/MS_Project_2007.aspx.cs" MasterPageFile="~/Site.Master" %>
<%@ Register src="ClassHeader.ascx" tagname="ClassHeader" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>Microsoft Project Training | MS Project Class</title>
<meta name="description" content="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
                	  <h1 style="text-align:center">Microsoft Project 2007 Training and Certification</h1>

                      <uc1:ClassHeader ID="ClassHeader1" runat="server" ClassType="MS Project" />


                       <p><span class="style2"><span class="style1"><span class="style3">Class Details</span> &nbsp;</span>&nbsp;&nbsp;</span></p>
                    	 <br />
                            <h3>Introduction</h3>
                            <p>Project management is a growing discipline that spans many roles and   departments within a wide variety of organizations. Microsoft Office Project   2007 has helped users around the world manage their businesses. In fact, today   over 20 million user licenses of Office Project 2007 have been sold, making it   the leading project management application in the world. As project management   has grown, organizations have asked Microsoft to help make it easier to identify   individuals that have knowledge and expertise in the field and with Office   Project 2007 and the Microsoft Office Enterprise Project Management Solution.   Office Project 2007 Certification program was created to help make the   identification of skilled project managers easier.</p>

                            <h3>More Than Product Training</h3>
                            <p>Microsoft Office Project 2007 certification is much more than just   certification on a product. This program is specifically designed to help   project managers apply and fully benefit from the leading standard in project   management best practices and methodologies as established by the Project   Management Institute (PMI). Microsoft Office Project 2007 certification is   aligned with PMI's &quot;A Guide to the Project Management Body of Knowledge&quot; (PMBOK   Guide), enabling project managers that build on this foundational work to   translate their skills directly to their day-to-day activities. The result is   better project outcomes, greater efficiency, and maximum value from our   products. </p>


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
                                                <asp:HyperLink ID="HyperLink1" Font-Size="Small" runat="server" ToolTip="More info about this city" NavigateUrl='<%#Eval("LocationSeo")+"-msproject-training-class" %>' Text='<%# Bind("City") %>' ></asp:HyperLink>
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
                                            <asp:imagebutton runat="server" ImageUrl="~/images/register_now.jpg"  ToolTip="Register now for this class" ID="ibtnRegister"  CommandArgument='<%#Eval("ClassID") %>' PostBackUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' />
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
                            AND classes.ClassTypeID=2
                            ORDER BY classes.ClassDate;">
                            </asp:AccessDataSource>


                      
                      <p>&nbsp;</p>
</asp:Content>