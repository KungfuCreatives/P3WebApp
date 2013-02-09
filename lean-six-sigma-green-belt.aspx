<%@ Page Language="C#" AutoEventWireup="true" Inherits="SixSigmaGreenBelt" Codebehind="lean-six-sigma-green-belt.aspx.cs" MasterPageFile="~/Site.Master" %>
<%@ Register src="ClassHeader.ascx" tagname="ClassHeader" tagprefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>Project Management Training | Six Sigma Green Belt Certification Training | Six Sigma Green Belt Training</title>
<meta name="description" content="Signup For Six Sigma Green Belt Training Here! Start Your Six Sigma Green Belt Training With Us And Save! Pinnacle 3 Learning Offers The Best Six Sigma Green Belt Training Classes Available With a 98% Pass Rate!" />
<meta name="keywords" content="Six Sigma Green Belt training, Six Sigma Green Belt certification, Six Sigma Green Belt certification training, Six Sigma Green Belt training" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
                	    <h1 style="text-align:center">Lean Six Sigma Green Belt Program</h1>
                        <uc1:ClassHeader ID="ClassHeader1" runat="server" ClassType="L6GI" />


                         <p><span class="style2"><span class="style1"><span class="style3">Class Details</span> &nbsp;</span>&nbsp;&nbsp;</span></p>
                    	 <br />
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
                      
                    <p><span class="style2"><span class="style1"><span class="style3">Class Schedule</span> &nbsp;</span>&nbsp;&nbsp;</span></p>
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
                            <telerik:AjaxSetting AjaxControlID="cmbMonths">
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
                                <td>&nbsp;</td>
                                
                                <td align="right">City: </td>
                                <td><telerik:RadComboBox runat="server" ID="cmbCities" DataSourceID="CitiesDataSource" DataTextField="City" DataValueField="City" AutoPostBack="true" Width="120px">
                                <Items>
                                    <telerik:RadComboBoxItem Value="[All]" />
                                </Items>
                                </telerik:RadComboBox></td>
                                <td>&nbsp;</td>
                                
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
                                                <asp:Label ID="Label4" Font-Size="Small" runat="server" Text='<%# Bind("ClassDate") %>'></asp:Label>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="City, State" SortExpression="City" >
                                        <HeaderStyle Width="140px" />
                                            <ItemStyle Font-Bold="true" />
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" Font-Size="Small" runat="server" ToolTip="More info about this city" NavigateUrl='<%#Eval("LocationSeo")+"-lean-six-sigma-green-belt-training-class" %>' Text='<%# Bind("City") %>' ></asp:HyperLink>
                                                <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%#  Eval("HOT") %>'  ToolTip="HOT ITEM! Discount applied to this class."  />--%>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>                                        
                                        <telerik:GridTemplateColumn HeaderText="Days" SortExpression="Description">
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <HeaderStyle Width="75px" />
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" Font-Size="Small" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="Price" >
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <HeaderStyle Width="80px" />
                                            <ItemTemplate>
                                                <span style="font-weight: bold; font-size:small;"><%# GetPriceText(DateTime.Parse(Eval("dtClassDate").ToString())) %></span>
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn HeaderText="Register"> 
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <HeaderStyle Width="100px" />
                                            <ItemTemplate>
                                            <asp:imagebutton runat="server" ImageUrl="~/images/register_now.gif" ToolTip="Register now for this class" ID="ibtnRegister" CommandName='<%# GetPrice(DateTime.Parse(Eval("dtClassDate").ToString())) %>'  CommandArgument='<%#Eval("ClassID") %>' OnClick="RegisterButton_Click" />
                                                <%--<asp:HyperLink runat="server" ToolTip="Register for this class" ID="hypRegister" CssClass="GridItemHyperlink" NavigateUrl='<%#"register.aspx?classID=" + Eval("ClassID") %>' ><nobr>Register Now</nobr></asp:HyperLink>--%>
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
                            AND classes.ClassTypeID=6
                            UNION 
                            Select '[All]' From Classes
                            "
                            >
                            </asp:AccessDataSource>
                            <asp:AccessDataSource ID="DatesDataSource" runat="server" 
                                DataFile="~/App_Data/classes_v2.mdb" SelectCommand="
                                SELECT Format(classes.ClassDate,&quot;mmm&quot;) as MonthName, Format(classes.ClassDate,&quot;mm&quot;) AS monthnum
                            FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID
                            WHERE (((classes.ClassDate)&gt;=Now()))
                            AND classes.ClassTypeID=6
                            GROUP BY Format(classes.ClassDate,&quot;mmm&quot;), Format(classes.ClassDate,&quot;mm&quot;)
                            UNION 
                            Select '[All]', 0 From Classes
                            ORDER BY 2
                            "
                            >
                            </asp:AccessDataSource>
                            <asp:AccessDataSource ID="classDB" runat="server" 
                                DataFile="~/App_Data/classes_v2.mdb" SelectCommand="
                                SELECT classes.ClassID, ClassType.classTypeDesc, DaysOfWeek.Description, Hotels.HotelWebsite, Locations.LocationDesc as City,Locations.LocationSeo, classes.HOT, 
                                Format(classes.ClassDate,&quot;mmm d&quot;) & &quot; - &quot; & Format(classes.ClassDate+2,&quot;d&quot;) & &quot;, &quot; & Format(classes.ClassDate,&quot;yyyy&quot;)  as ClassDate,  
                                classes.SeatsAvailable, classes.numdays, classes.ClassDate as dtClassDate,  
    classes.Comment, classes.ClassDaysID
                            FROM Locations INNER JOIN (ClassType INNER JOIN (Hotels INNER JOIN (DaysOfWeek INNER JOIN classes ON DaysOfWeek.DaysOfWeekID=classes.ClassDaysID) ON Hotels.HotelID=classes.HotelID) ON ClassType.classTypeID=classes.ClassTypeID) ON Locations.LocationID=classes.LocationID
                            WHERE (((classes.ClassDate)&gt;=Now()))
                            AND classes.ClassTypeID=6
                            AND Locations.LocationDesc =  iif(@City='[All]',Locations.LocationDesc,@City)
                            AND Format(classes.ClassDate,&quot;mmm&quot;) =  iif(@Month='[All]',Format(classes.ClassDate,&quot;mmm&quot;),@Month)
                            ORDER BY classes.ClassDate;">
                            <SelectParameters>
                                <asp:ControlParameter Name="City" PropertyName="SelectedValue" ControlID="cmbCities" />
                                <asp:ControlParameter Name="Month" PropertyName="SelectedValue" ControlID="cmbMonths" />
                            </SelectParameters>
                            </asp:AccessDataSource>


                             <p>&nbsp;</p>
                              

</asp:Content>