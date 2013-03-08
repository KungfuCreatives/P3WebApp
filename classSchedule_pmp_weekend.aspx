<%@ Page Language="C#" AutoEventWireup="true" Inherits="classSchedule_pmp_weekend" Codebehind="classSchedule_pmp_weekend.aspx.cs" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>Weekend Project Management Class</title>
<meta name="description" content="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
                    	<h1 style="text-align:center">Pinnacle 3 Learning PMP Class Schedule</h1>
                    	<p class="classTitle2"><a href="Instructor_Led_PMP_Exam_Training.aspx">Instructor Led Training</a> 
                            &gt; <a href="pmp-certification-training.aspx">PMP Certification Exam Prep</a> > Weekend Courses</p>
                    	<p><img src="images/2_p2.jpg" alt="PMP Exam Prep Class" width="111" height="69" />This class provides intense, focused training and is designed for the student to Pass 
the PMP exam  immediately following class.  Our concepts and 
materials are designed around Accelerated learning.</p>
                    	<p class=" style1"><b>The Project Management Professional ® Exam Prep course includes:</b></p>
                    	<ul>
                          <li>PMBOK®       Guide-Fourth Edition</li>
                    	  <li>Pre-course       &quot;Blueprint For Success&quot;</li>
                    	  <li>Online       test simulator</li>
                    	  <li>Detailed       review and breakdown of the knowledge needed to pass the PMP® Certification Exam. </li>
                    	  <li>Critical       Exam Taking Techniques</li>
                    	  <li>Memory       enhancement techniques </li>
                    	  <li>In       class accelerated learning techniques using audio, visual and kinesthetic       approaches</li>
                    	  <li>Over       550+ practice questions</li>
                    	  <li>PMP       Exam prep study guides</li>
                    	  <li>Approved       36 contact hour PMP® Exam Certification Course</li>
                  	  </ul>
                    	<p class=" style1"> <b>These classes begin on the date listed below, and finish on the following weekend.</b> </p>
                    	
                        <p><span class="style2"><span class="style1"><span class="style3">Weekend Classes (x2)</span> &nbsp;</span>&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="project-management-courses.aspx" style="font-size:12px;"><img src="images/btn_viewWeekdaySchedule_blue.jpg" border="0" /></a></p>

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
                            <telerik:AjaxSetting AjaxControlID="cmbDates">
                                <UpdatedControls>
                                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" />
                                </UpdatedControls>
                            </telerik:AjaxSetting>
                        </AjaxSettings>
                        </telerik:RadAjaxManager>
                        <table class="TelerikClassGrid" width="100%">
                            <tr>
                                <td align="right">City: </td>
                                <td><telerik:RadComboBox runat="server" ID="cmbCities" DataSourceID="CitiesDataSource" DataTextField="City" DataValueField="City" AutoPostBack="true">
                                <Items>
                                    <telerik:RadComboBoxItem Value="[All]" />
                                </Items>
                                </telerik:RadComboBox></td>
                                <td>&nbsp;</td>
                                <td align="right">Month: </td>
                                <td><telerik:RadComboBox runat="server" ID="cmbDates" DataSourceID="DatesDataSource" DataTextField="ClassDate" DataValueField="ClassDate" AutoPostBack="true">
                                <Items>
                                    <telerik:RadComboBoxItem Value="[All]" />
                                </Items>
                                </telerik:RadComboBox></td>
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
                                                <nobr><asp:Label ID="Label4" Font-Size="Small" runat="server" Text='<%# Bind("ClassDate") %>'></asp:Label></nobr>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="City, State" SortExpression="City" >
                                            <HeaderStyle Width="180px" />
                                            <ItemStyle Font-Bold="true" />
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" Font-Size="Small" Target="_blank" runat="server" ToolTip="Check out the hotel's web site" NavigateUrl='<%# Eval("HotelWebsite") %>' Text='<%# Bind("City") %>' ></asp:HyperLink>
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%#  Eval("HOT") %>' Visible='<%#  (Eval("HOT").ToString().Length > 0) %>' AlternateText="$250 Discount. Already applied to select Classes."  />
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>                                        
                                        <telerik:GridTemplateColumn HeaderText="Days" SortExpression="Description">
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" Font-Size="Small" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="">
                                            <ItemTemplate>
                                                <asp:HyperLink runat="server" ToolTip="Register for this class" ID="hypRegister" CssClass="GridItemHyperlink" NavigateUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' ><nobr>Register Now</nobr></asp:HyperLink>
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
                            AND classes.ClassTypeID=1
                            AND classes.ClassDaysID = 2
                            UNION 
                            Select '[All]' From Classes
                            "
                            >
                            </asp:AccessDataSource>
                            <asp:AccessDataSource ID="DatesDataSource" runat="server" 
                                DataFile="~/App_Data/classes_v2.mdb" SelectCommand="
                                SELECT Format(classes.ClassDate,&quot;mmm&quot;) as ClassDate, Format(classes.ClassDate,&quot;mm&quot;) AS monthnum
                            FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID
                            WHERE (((classes.ClassDate)&gt;=Now()))
                            AND classes.ClassTypeID=1
                            AND classes.ClassDaysID = 1
                            GROUP BY Format(classes.ClassDate,&quot;mmm&quot;), Format(classes.ClassDate,&quot;mm&quot;)
                            UNION 
                            Select '[All]', 0 From Classes
                            ORDER BY 2
                            "
                            >
                            </asp:AccessDataSource>
                            <asp:AccessDataSource ID="classDB" runat="server" 
                                DataFile="~/App_Data/classes_v2.mdb" SelectCommand="
                               SELECT classes.ClassID, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.HotelWebsite, Locations.LocationDesc as City, classes.HOT, 
                                Format(classes.ClassDate,&quot;mmm d&quot;) & &quot; - &quot; & Format(classes.ClassDate+4,&quot;d&quot;) & &quot;, &quot; & Format(classes.ClassDate,&quot;yyyy&quot;)  as ClassDate, 
                                classes.SeatsAvailable, classes.numdays, classes.ClassDaysID
                            FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID
                            WHERE (((classes.ClassDate)&gt;=Now()))
                            AND classes.ClassTypeID=1
                            AND classes.ClassDaysID = 2
                            AND Locations.LocationDesc =  iif(@City='[All]',Locations.LocationDesc,@City)
                            AND Format(classes.ClassDate,&quot;mm/dd/yyyy&quot;) =  iif(@Date='[All]',Format(classes.ClassDate,&quot;mm/dd/yyyy&quot;),@Date)
                            ORDER BY classes.ClassDate;">
                            <SelectParameters>
                                <asp:ControlParameter Name="City" PropertyName="SelectedValue" ControlID="cmbCities" />
                                <asp:ControlParameter Name="Date" PropertyName="SelectedValue" ControlID="cmbDates" />
                            </SelectParameters>
                            </asp:AccessDataSource>
                        <%-- <asp:GridView ID="GridView1" runat="server" AllowSorting="True"
                                AutoGenerateColumns="False" DataSourceID="classDB2" CssClass="" 
                                AllowPaging="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <Columns>
                                <asp:BoundField DataField="LocationDesc" HeaderText="Location" 
                                        SortExpression="LocationDesc" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" Target="_blank" runat="server" NavigateUrl='<%# Eval("HotelWebsite") %>' >info</asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#  Eval("HOT") %>' AlternateText="$250 Discount. Already applied to select Classes."  /></asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    <asp:BoundField DataField="ClassDate" HeaderText="Class Date" 
                                        SortExpression="ClassDate" />
                                        <asp:BoundField DataField="Description" HeaderText="Days of Week" 
                                        SortExpression="Description" />
                                    <asp:BoundField DataField="SeatsAvailable" HeaderText="Seats Available" 
                                        SortExpression="SeatsAvailable" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' >Register</asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#999999" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
                            <asp:AccessDataSource ID="classDB2" runat="server" 
                                DataFile="~/App_Data/classes_v2.mdb" SelectCommand="SELECT classes.ClassID, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.HotelWebsite, Locations.LocationDesc, classes.HOT, (Format(classes.ClassDate,&quot;mm/dd/yyyy&quot;)) as ClassDate, classes.SeatsAvailable, classes.numdays, classes.ClassDaysID
FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID
WHERE (((classes.ClassDate)&gt;=Now()))
AND classes.ClassTypeID = 1
AND classes.ClassDaysID = 2
ORDER BY classes.ClassDate;"></asp:AccessDataSource>--%>
                        &nbsp;<br />
</asp:Content>