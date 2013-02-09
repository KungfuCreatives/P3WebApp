<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="class-locations.aspx.cs" Inherits="P3WebApp.class_locations" MasterPageFile="~/Site.Master"  %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>PMP Class Locations</title>
<meta name="description" content="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
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
                                            <HeaderStyle Width="150px" />
                                            <ItemStyle Font-Bold="true" />
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" Font-Size="Small" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn>
                                        <HeaderStyle Width="40px" />
                                            <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" Target="_blank" runat="server" ToolTip="Check out the hotel's web site" NavigateUrl='<%# Eval("HotelWebsite") %>' Text='<%# Eval("HotelWebsite").ToString().Length > 0 ? "hotel" : "" %>' ></asp:HyperLink>
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#  Eval("HOT") %>' AlternateText="$250 Discount. Already applied to select Classes."  />
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn >
                                        
                                        <telerik:GridTemplateColumn HeaderText="Days" SortExpression="Description">
                                        <HeaderStyle Width="100px" />
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" Font-Size="Small" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="Seats" SortExpression="SeatsAvailable">
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" Font-Size="Small" runat="server" Text='<%# Bind("SeatsAvailable") %>'></asp:Label>
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
                                SELECT distinct(Format(classes.ClassDate,&quot;mm/dd/yyyy&quot;)) as ClassDate
                            FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID
                            WHERE (((classes.ClassDate)&gt;=Now()))
                            AND classes.ClassTypeID=1
                            AND classes.ClassDaysID = 2
                            UNION 
                            Select '[All]' From Classes
                            "
                            >
                            </asp:AccessDataSource>
                            <asp:AccessDataSource ID="classDB" runat="server" 
                                DataFile="~/App_Data/classes_v2.mdb" SelectCommand="
                                SELECT classes.ClassID, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.HotelWebsite, Locations.LocationDesc as City, classes.HOT, (Format(classes.ClassDate,&quot;mm/dd/yyyy&quot;)) as ClassDate, classes.SeatsAvailable, classes.numdays, classes.ClassDaysID
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

</asp:Content>
