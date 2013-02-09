<%@ Page Language="C#" AutoEventWireup="true" Inherits="_Default" Codebehind="Default.aspx.cs" MasterPageFile="~/Site.Master" %>
<%@ Register src="RssReader.ascx" tagname="RssReader" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
    <title>PMP Certification | PMP Bootcamp | Project Management Certification</title>
<meta name="description" content="Our PMP Certification Bootcamp Classes have the Highest Pass Rate, Guaranteed! Take Your Career To The Next Level with Project Management Certification!" />
<meta name="keywords" content="PMP Bootcamp , PMP Boot Camp"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
    <script type="text/javascript">

    var flashvars = {};
    var params = {};
    var attributes = {};
swfobject.embedSWF("flash/pinnacle3Header.swf", "flashDropZone", "958", "254", "9.0.0", "expressInstall.swf", flashvars, params, attributes);
</script>

    <div id="flashDropZone"></div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
                        <h1 style="text-align:center">PMP &amp; Lean Six Sigma Certification</h1>
                	    <p align="left">At Pinnacle 3 Learning we are committed to ensuring that we provide the Best Project Management Training and Certification Exam Preparation available. We offer a variety of intense, professional, project management training classes. 
                        We specialize in <a href="pmp-certification-training.aspx">Project Management Professional, PMP&reg; Certification Exam</a>
                        Let us help you achieve the Pinnacle today!
                         </p>
                	    <h2 class="pPadH2">Upcoming <i>PMP</i> Certification Boot Camp Training Classes</h2>
                	    <div style="text-align:center;">
                            <div style="margin:2px 4px 4px 4px;">
                                <telerik:RadGrid ID="RadGrid1" runat="server" AutoGenerateColumns="false" DataSourceID="defaultQuery" Skin="Web20"
                                 GridLines="None" BorderWidth="0px"
                                >
                                <ClientSettings EnableRowHoverStyle="true">
                                 <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="True" ScrollHeight="175px"></Scrolling>
                                </ClientSettings>
                                <MasterTableView DataKeyNames="ClassID" Width="100%">
                                <HeaderStyle Font-Size="Medium" HorizontalAlign="Center"  Font-Bold="True"  />
                                <ItemStyle CssClass="TelerikItem"/>
                                <AlternatingItemStyle CssClass="TelerikItem" />
                                    <Columns>
                                        <telerik:GridTemplateColumn HeaderText="Date" SortExpression="ClassDate">
                                        <HeaderStyle Width="120px" />
                                            <ItemTemplate>
                                                <nobr><asp:Label ID="Label4" Font-Size="Small" runat="server" Text='<%# Bind("ClassDate") %>'></asp:Label></nobr>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="City, State" SortExpression="City" >
                                        <HeaderStyle Width="135px" />
                                            <ItemStyle Font-Bold="true" />
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" Font-Size="Small" runat="server" ToolTip="More info about this city" NavigateUrl='<%#"pmp-certification-" + Eval("LocationSeo") %>' Text='<%# Bind("City") %>' ></asp:HyperLink>
                                                <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%#  Eval("HOT") %>' AlternateText="$250 Discount. Already applied to select Classes."  />--%>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>                                        
                                        <telerik:GridTemplateColumn HeaderText="Days" SortExpression="Description">
                                        <HeaderStyle Width="90px" />
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" Font-Size="Small" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="Price" >
                                        <HeaderStyle Width="80px" />
                                            <ItemTemplate>
                                                <span style="font-weight: bold; font-size:small;"><%# GetPriceText(DateTime.Parse(Eval("dtClassDate").ToString())) %></span>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="Register">
                                            <ItemTemplate>
                                            <asp:imagebutton runat="server" ImageUrl="~/images/register_now.gif" ToolTip="Register now for this class" ID="ibtnRegister"  CommandArgument='<%#Eval("ClassID") %>' PostBackUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' />
                                                <%--<asp:HyperLink runat="server" ToolTip="Register for this class" ID="hypRegister" CssClass="GridItemHyperlink" NavigateUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' ><nobr>Register Now</nobr></asp:HyperLink>--%>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                    </Columns>
                                </MasterTableView>
                                </telerik:RadGrid>
                            </div>
                            <a class="classTypes" href="pmp-certification-training.aspx">See our full <i>PMP</i> schedule</a>
                	        <asp:AccessDataSource ID="defaultQuery" runat="server" 
                                DataFile="~/App_Data/classes_v2.mdb" SelectCommand="
                                SELECT TOP 8 classes.ClassID, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.HotelWebsite,Locations.LocationSeo, Locations.LocationDesc as City, classes.HOT, 
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
                            AND classes.ClassTypeID=1
                            AND classes.ClassDaysID = 1
                            AND ((classes.ClassDate) Between DateAdd(&quot;d&quot;,1,Date()) And DateAdd(&quot;d&quot;,30,Date())) 
                                "></asp:AccessDataSource>
                	        <%-- AND ((classes.ClassDate) Between DateAdd(&quot;d&quot;,7,Date()) And DateAdd(&quot;d&quot;,20,Date())) ;--%>
                	        
                	        
                	    </div><!--
                        <h2 class="pPadH2">Upcoming <i>Lean Six Sigma</i> Certification Classes</h2>
                        <div style="text-align:center;">
                            <div style="margin:2px 4px 4px 4px;">
                                <telerik:RadGrid ID="RadGrid2" runat="server" AutoGenerateColumns="false" DataSourceID="leanSixQuery" Skin="Web20"
                                 GridLines="None" BorderWidth="0px"
                                >
                                <ClientSettings EnableRowHoverStyle="true">
                                 <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="True" ScrollHeight="175px"></Scrolling>
                                </ClientSettings>
                                <MasterTableView DataKeyNames="ClassID" Width="100%">
                                <HeaderStyle Font-Size="Medium" HorizontalAlign="Center"  Font-Bold="True"  />
                                <ItemStyle CssClass="TelerikItem"/>
                                <AlternatingItemStyle CssClass="TelerikItem" />
                                    <Columns>
                                        <telerik:GridTemplateColumn HeaderText="Date" SortExpression="ClassDate">
                                        <HeaderStyle Width="120px" />
                                            <ItemTemplate>
                                                <nobr><asp:Label ID="Label4" Font-Size="Small" runat="server" Text='<%# Bind("ClassDate") %>'></asp:Label></nobr>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="City, State" SortExpression="City" >
                                        <HeaderStyle Width="135px" />
                                            <ItemStyle Font-Bold="true" />
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" Font-Size="Small" runat="server" ToolTip="More info about this city" NavigateUrl='<%#"pmp-certification-" + Eval("LocationSeo") %>' Text='<%# Bind("City") %>' ></asp:HyperLink>
                                                <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%#  Eval("HOT") %>' AlternateText="$250 Discount. Already applied to select Classes."  />--%>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>                                        
                                        <telerik:GridTemplateColumn HeaderText="Days" SortExpression="Description">
                                        <HeaderStyle Width="90px" />
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" Font-Size="Small" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="Price" >
                                        <HeaderStyle Width="80px" />
                                            <ItemTemplate>
                                                <span style="font-weight: bold; font-size:small;"><%# GetPriceText(DateTime.Parse(Eval("dtClassDate").ToString())) %></span>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="Register">
                                            <ItemTemplate>
                                            <asp:imagebutton runat="server" ImageUrl="~/images/register_now.gif" ToolTip="Register now for this class" ID="ibtnRegister"  CommandArgument='<%#Eval("ClassID") %>' PostBackUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' />
                                                <%--<asp:HyperLink runat="server" ToolTip="Register for this class" ID="hypRegister" CssClass="GridItemHyperlink" NavigateUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' ><nobr>Register Now</nobr></asp:HyperLink>--%>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                    </Columns>
                                </MasterTableView>
                                </telerik:RadGrid>
                            </div>
                            <a class="classTypes" href="lean-six-sigma-black-belt.aspx">See our full <i>Lean 6 Sigma</i> Schedule</a>
                	        <asp:AccessDataSource ID="leanSixQuery" runat="server" 
                                DataFile="~/App_Data/classes_v2.mdb" SelectCommand="
                                SELECT TOP 8 classes.ClassID, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.HotelWebsite,Locations.LocationSeo, Locations.LocationDesc as City, classes.HOT, 
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
                            AND classes.ClassTypeID in (6,7)
                            AND ((classes.ClassDate) Between DateAdd(&quot;d&quot;,1,Date()) And DateAdd(&quot;d&quot;,30,Date())) 
                                "></asp:AccessDataSource>
                	        <%-- --AND classes.ClassDaysID = 1 AND ((classes.ClassDate) Between DateAdd(&quot;d&quot;,7,Date()) And DateAdd(&quot;d&quot;,20,Date())) ;--%>
                	        
                	        
                	    </div>-->
                        <p align="left" style="margin-top:6px;">&nbsp;</p>
                        <h2>PMP & Lean Six Sigma Certification News</h2>
                        <uc1:RssReader ID="RssReader" runat="server" />
</asp:Content>
                	