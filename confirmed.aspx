<%@ Page Language="C#" AutoEventWireup="true" Inherits="P3WebApp.confirmed" Codebehind="confirmed.aspx.cs" MasterPageFile="~/Register.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>(PMP®) Project Management Professional Certification | Congratulations, You're Enrolled!</title>
<meta name="description" content="PMP Certification Courses with a 98% SUCCESS RATE! Take Your Career To The Next Level with a Project Management Certification! Our Project Management Exam Training is The Best PMP Training Company Available. Check Us Out!">
<meta name="keywords" content="PMP Certification, Project Management Certification, PMP Exam, PMP Courses, PMP Training, Project Management Training, Project Management Courses">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
            <center>
                <h1>Thank You For Registering!</h1>
                <div style="color:Red"><h2><asp:label runat="server" ID="lblEmail" Text="A confirmation letter has been sent to your email address."></asp:label></h2>
                </div>
                <div><h2>
                Your registration confirmation number is: <asp:Label runat="server" ID="lblRegistration" /><br />
                <br />
                Please print this page for your records.</h2>
                </div>
                        <table cellpadding="2" cellspacing="0" border="0">
                            <tr>
                                <td colspan="2">
                                    <h4>
                                        Class Information</h4>
                                </td>
                            </tr>
                            <tr>
                                <td class="label" align="right">
                                    Class:
                                </td>
                                <td>
                                    <asp:Label ID="lblClass"  runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                             <tr>
                                <td class="label" align="right">
                                    Num Students:
                                </td>
                                <td>
                                    <asp:Label ID="lblNumStudents"  runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="label" align="right">
                                    Class Location:
                                </td>
                                <td>
                                    <asp:Label ID="lblClassLocation"  runat="server" Text=""></asp:Label>&nbsp;<asp:Label ID="lblHotel" runat="server" Text="" />&nbsp;<asp:Hyperlink ID="hotelInfoLink" Target="_blank" runat="server" Text="(info)" />
                                </td>
                            </tr>
                            <tr>
                                <td class="label" align="right">
                                    Class Date:
                                </td>
                                <td>
                                    <asp:Label ID="lblClassDate" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><asp:Label ID="lblClassDays" runat="server" Text=""/></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td><asp:Label ID="classTimes" runat="server" Text="9:00A - 6:00P" /> </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <h4>
                                        Contact Information</h4>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    First Name:
                                </td>
                                <td>
                                    <asp:Label ID="billTo_firstName" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Last Name:
                                </td>
                                <td>
                                    <asp:Label ID="billTo_lastName" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Company:
                                </td>
                                <td>
                                    <asp:Label ID="lblCompany" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Address:
                                </td>
                                <td>
                                    <asp:Label ID="billTo_street1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    City:
                                </td>
                                <td>
                                    <asp:Label ID="billTo_city" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    State/Province:
                                </td>
                                <td>
                                    <asp:Label ID="billTo_state" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Postal Code:
                                </td>
                                <td>
                                    <asp:Label ID="billTo_postalCode" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Country:
                                </td>
                                <td>
                                    <asp:Label ID="billTo_country" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Email Address:
                                </td>
                                <td>
                                    <asp:Label ID="billTo_email" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="label">
                                    Phone Number
                                </td>
                                <td>
                                    <asp:Label ID="billTo_phoneNumber" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" align="right" class="label">
                                    Comments:
                                </td>
                                <td>
                                    <asp:Label ID="billto_comments" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <h4>
                                        Payment Information</h4>
                                </td>
                            </tr>
                            <tr>
                                <td class="label" align="right">
                                    Amount:
                                </td>
                                <td>
                                    <asp:Label ID="lblPrice" CssClass="label" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="label" align="right">
                                     <nobr>Payment Method:</nobr>
                                </td>
                                <td>
                                     <asp:Label ID="lblPayment" CssClass="label" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                        </table>
                        </center>
                        <!-- Google Code for Sales Conversion Page -->
                        <script type="text/javascript">
                        /* <![CDATA[ */
                        var google_conversion_id = 1059085745;
                        var google_conversion_language = "ar";
                        var google_conversion_format = "2";
                        var google_conversion_color = "ffffff";
                        var google_conversion_label = "AmmrCLeewQIQsbuB-QM";
                        var google_conversion_value = 0;
                        /* ]]> */
                        </script>
                        <script type="text/javascript" src="http://www.googleadservices.com/pagead/conversion.js">
                        </script>
                        <noscript>
                        <div style="display:inline;">
                        <img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/1059085745/?label=AmmrCLeewQIQsbuB-QM&amp;guid=ON&amp;script=0"/>
                        </div>
                        </noscript>

                        <!-- Google Code for adcenter -->
                        <script type="text/javascript">
                            if (!window.mstag) mstag = { loadTag: function () { }, time: (new Date()).getTime() };
                        </script> 
                        <script id="Script1" type="text/javascript" src="//flex.atdmt.com/mstag/site/b1a48539-ddf1-47a1-8afa-4a084259a795/mstag.js"></script> 
                        <script type="text/javascript">
                            mstag.loadTag("conversion", { cp: "5050", dedup: "1" })
                        </script> 
                        <noscript> 
                        <iframe src="//flex.atdmt.com/mstag/tag/b1a48539-ddf1-47a1-8afa-4a084259a795/conversion.html?cp=5050&dedup=1" frameborder="0" scrolling="no" width="1" height="1" style="visibility:hidden;display:none"> </iframe> 
                        </noscript>
                </asp:Content>