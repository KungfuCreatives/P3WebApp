<%@ Page Language="C#" AutoEventWireup="true" Inherits="receipt" Codebehind="receipt.aspx.cs"  MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<meta name="description" content="PMP Certification Courses with a 98% SUCCESS RATE! Take Your Career To The Next Level with a Project Management Certification! Our Project Management Exam Training is The Best PMP Training Company Available. Check Us Out!">
<meta name="keywords" content="PMP Certification, Project Management Certification, PMP Exam, PMP Courses, PMP Training, Project Management Training, Project Management Courses">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
                    	<h1>Register for Your Pinnacle 3 Learning Class </h1>
                    	&nbsp;<br />
                    	<p>
                    	    <b>Please print for your records:</b><br />
                            <% 

                                Response.Write("Your Order Number: " + Request.Form.Get("orderNumber") + "<br>");
                                Response.Write("Amount Billed: " + Request.Form.Get("orderAmount") + "<br>");
                                Response.Write("Card Billed: " + Request.Form.Get("card_accountNumber") + "<br>");
                                Response.Write("&nbsp;<br>Billed To: " + Request.Form.Get("billTo_firstName") + " " + Request.Form.Get("billTo_lastName") + "<br>");
                                Response.Write("&nbsp;<br>Class Location: " + Request.Form.Get("merchantDefinedData2") + "<br>");
                                Response.Write("Class Start Date: " + Request.Form.Get("merchantDefinedData3") + "<br>");

                                Response.Write("<br>Order accepted.");

                            %>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </p>
                            <br />&nbsp;
                        </asp:Content>