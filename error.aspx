<%@ Page Language="C#" AutoEventWireup="true" Inherits="error" Codebehind="error.aspx.cs"  MasterPageFile="~/Site.Master" %>
<asp:Content runat="server" ContentPlaceHolderID="MetaContent" ID="contentMeta">
<title>PMP Certification - Oops, we threw an error</title>
<meta name="description" content="PMP Certification Courses with a 98% SUCCESS RATE! Take Your Career To The Next Level with a Project Management Certification! Our Project Management Exam Training is The Best PMP Training Company Available. Check Us Out!">
<meta name="keywords" content="PMP Certification, Project Management Certification, PMP Exam, PMP Courses, PMP Training, Project Management Training, Project Management Courses">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="BannerContent" ID="contentBanner">
<img src="images/default_06.jpg" width="958" height="234" alt="">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="contentMain">
<p>
<font color="red"><b>An Error Has Been Encountered</b></font>
</p>
<p>
<font color="red"><b>Error Message:</b></font><br />
<%=ErrorMessage %>
</p>  
<p>
Don't worry!. The web site administrator has been notified of the error and will be responding appropriately right away. Pinnacle 3 Learning sincerely apologizes for this inconvenience and will do everything possible to make it right.
</p>
<p>
If you'd like to talk to us about this issue or make sure your previous actions were captured please call <strong>202-706-7620</strong> and we'll work with you in person.</p>                                                                                                                                                                                                                                                                                                                                                                           
</asp:Content>