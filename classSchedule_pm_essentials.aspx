<%@ Page Language="C#" AutoEventWireup="true" Inherits="classSchedule_pm_essentials" Theme="Default" Codebehind="classSchedule_pm_essentials.aspx.cs" MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>Pinnacle 3 Learning | PM Essentials</title>
<meta name="description" content="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
                <img src="images/default_06.jpg" width="958" height="234" alt="" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
                            <h1 style="text-align:center">Pinnacle 3 Learning Class Schedule</h1>
                            <p class="classTitle2">
                                <a href="Instructor_Led_PMP_Exam_Training.aspx">Instructor Led Training</a> > Project
                                Management Essentials</p>
                            <p>
                                Our first level of PMP training is our Project Manager Essentials. We teach you
                                how to apply the processes, techniques, and tools for organizing and planning your
                                project, as well as how to execute the plan, monitor and control, and deliver and
                                close the project successfully. The course is based on the five process groups -
                                Initiating, Planning, Executing, Controlling, and Closing.
                            </p>
                            <h4>
                                Weekend Classes (One weekend)</h4>
                            &nbsp;<br />
                            <center>
                                <asp:GridView ID="grdSchedule" runat="server" DataSourceID="classDB" 
                                    BorderColor="Black" BorderWidth="1" Width="520" AllowSorting="true">
                                    <Columns>
                                        <asp:BoundField HeaderText="City" DataField="LocationDesc" SortExpression="LocationDesc"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" ItemStyle-Font-Bold="true" />
                                        <asp:HyperLinkField HeaderText="Hotel" DataNavigateUrlFields="HotelWebsite" Target="_self"
                                            SortExpression="HotelWebsite" Text="Info" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center" />
                                        <asp:TemplateField HeaderText="Promo" SortExpression="Hot">
                                            <ItemTemplate>
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%#  Eval("HOT") %>' Visible='<%#  (Eval("HOT").ToString().Length > 0) %>' ToolTip="$250 Seasonal Discount. Already applied to select Classes."
                                                    AlternateText="$250 Seasonal Discount. Already applied to select Classes." />&nbsp;
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText="Start Date" DataField="ClassDate" SortExpression="ClassDate"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                        <asp:BoundField HeaderText="Days of Week" DataField="Description" SortExpression="Description"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                        <asp:BoundField HeaderText="Availability" DataField="SeatsAvailable" SortExpression="SeatsAvailable"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                        <asp:TemplateField HeaderText="">
                                            <ItemTemplate>
                                               <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' >Register</asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <asp:AccessDataSource ID="classDB" runat="server" DataFile="~/App_Data/classes_v2.mdb"
                                    SelectCommand="SELECT classes.ClassID, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.HotelWebsite, Locations.LocationDesc, classes.HOT, (Format(classes.ClassDate,&quot;mm/dd/yyyy&quot;)) as ClassDate, classes.SeatsAvailable, classes.numdays, classes.ClassDaysID
FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID
WHERE (((classes.ClassDate)&gt;=Now()))
AND classes.ClassTypeID=3
AND classes.ClassDaysID = 3
ORDER BY classes.ClassDate;"></asp:AccessDataSource>
                                &nbsp;<br />
                            </center>
</asp:Content>