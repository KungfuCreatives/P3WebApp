<%@ Page Language="C#" AutoEventWireup="true" Inherits="Project_Risk" Codebehind="Project_Risk.aspx.cs"  MasterPageFile="~/Site.Master" %>
<%@ Register src="ClassHeader.ascx" tagname="ClassHeader" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>PMI-RMP Certification | Project Risk Management Certification | Risk Management Exam Training Courses</title>
<meta name="description" content="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">

                    	<h1 style="text-align:center">Managing Project Risk</h1>
                    	<uc1:ClassHeader ID="ClassHeader1" runat="server" ClassType="Risk" />

                         <p><span class="style2"><span class="style1"><span class="style3">Class Details</span> &nbsp;</span>&nbsp;&nbsp;</span></p>
                    	 <br />
                    	<p>
                            This course is consistent with PMI's PMBOK® approach to project risk management. While covering the same ground, it explores the topic in greater depth and with the broadest practical application in mind. It incorporates the latest findings from recent published literature based on our instructors' research. 
                        </p>
                        <p>&nbsp;</p>
                        <ul>
                            <li>What is Project Risk Management? </li>
                            <li>Key terms and definitions </li>
                            <li>Benefits and Barriers </li>
                            <li>Relationship between Uncertainty, Risk and Opportunity </li>
                            <li>Planning for Project Risk  </li>
                            <li>Risk Identification (PMBOK Aligned)</li>
                            <li>Project Risk Event examples </li>
                            <li>Project Risk analysis: Qualitative and Quantitative </li>
                            <li>Techniques of Project Risk Analysis </li>
                            <li>Project Risk Response and Mitigation </li>
                            <li>Project Risk Control in Project Execution </li>
                            <li>Insurable Risks </li>
                            <li>2 Day Instructor Led Course - 16 PDU's</li>
                                                    
                        </ul>

                        <p class=" style4" style="text-align:center">
                           To Register for this Class, call <strong>888-808-4PMP(4767)</strong><br />or see the Schedule and Register Online here:</p>
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
                                                <asp:HyperLink ID="HyperLink1" Font-Size="Small" runat="server" ToolTip="More info about this city" NavigateUrl='<%#Eval("LocationSeo")+"-projectrisk-training-class" %>' Text='<%# Bind("City") %>' ></asp:HyperLink>
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
                            AND classes.ClassTypeID=4
                            ORDER BY classes.ClassDate;">
                            </asp:AccessDataSource>




                       
                        
                        <p>&nbsp;</p>
</asp:Content>        