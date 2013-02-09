<%@ Page Language="C#" AutoEventWireup="true" Inherits="Login" Codebehind="Login.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>PMP Exam Prep - Pinnacle 3 Learining</title>
<link rel="stylesheet" type="text/css" href="../css/main.css" />
<script type="text/javascript" language="javascript" src="../js/MM_Rollover.js"></script>
    <style type="text/css">
        .style1
        {
            width: 57px;
        }
    </style>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="MM_preloadImages('../images/nav_over_01.gif','../images/nav_over_02.gif','../images/nav_over_03.gif','../images/nav_over_04.gif','../images/nav_over_05.gif','../images/nav_over_06.gif','../images/nav_over_07.gif')">
    <form id="form1" runat="server">
<table border="0" cellpadding="0" cellspacing="0" align="center" width="960">
	<tr>
		<td rowspan="3" bgcolor="#000000"><img src="../images/spacer.gif" width="1" height="7" alt="" /></td>
		<td colspan="3">
        	<table width="958" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="215"><img src="../images/topBar_01.gif" width="215" height="62" alt="" /></td>
                    <td class="topNav" align="right"><p><a href="/">home</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="classSchedule.aspx">register</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="Contact_Pinnacle_3_PMP_Certification_Training.aspx">contact us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></td>
                </tr>
            </table>
        </td>
		<td rowspan="3" bgcolor="#000000"><img src="../images/spacer.gif" width="1" height="7" alt="" /></td>
	</tr>
	<tr>
		<td colspan="3"><img src="../images/default_06.jpg" width="958" height="234" alt=""></td>
	</tr>
	<tr>
		<td bgcolor="#CCCCCC" valign="top">
        	<table width="215" border="0" cellpadding="0" cellspacing="0">
                <tr>
               	  <td><img src="../images/spacer.gif" height="20" /></td>
                </tr>
                <tr>
                    <td><a href="about_Pinnacle3_PMP_Training.html" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image14','','../images/nav_over_01.gif',1)"><img src="../images/nav_01.gif" alt="About Us" name="Image14" width="215" height="33" border="0"></a></td>
                </tr>
                <tr>
                    <td><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image15','','../images/nav_over_02.gif',1)"><img src="../images/nav_02.gif" alt="PMP Instructor Led Classes" name="Image15" width="215" height="31" border="0"></a></td>
                </tr>
                <tr>
                    <td><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image16','','../images/nav_over_03.gif',1)"><img src="../images/nav_03.gif" alt="PMP Self-Paced Courses" name="Image16" width="215" height="31" border="0"></a></td>
                </tr>
                <tr>
                    <td><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image17','','../images/nav_over_04.gif',1)"><img src="../images/nav_04.gif" alt="PMP Class Schedule" name="Image17" width="215" height="30" border="0"></a></td>
                </tr>
                <tr>
                    <td><a href="accreditation_p3_PMP_Exam_Training.html" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image18','','../images/nav_over_05.gif',1)"><img src="../images/nav_05.gif" alt="PMP Accreditations" name="Image18" width="215" height="32" border="0"></a></td>
                </tr>
                <tr>
                    <td><a href="http://www.pinnacle3learning.com/Pinnacle_3_PMP_Training_Guarantee.aspx"  onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image19','','../images/nav_over_06.gif',1)"><img src="../images/nav_06.gif" alt="Our PMP Guarantee" name="Image19" width="215" height="29" border="0"></a></td>
                </tr>
                <tr>
                    <td><a href="" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image20','','../images/nav_over_07.gif',1)"><img src="../images/nav_07.gif" alt="Contact Us" name="Image20" width="215" height="34" border="0"></a></td>
                </tr>
            </table>
            
      </td>
		<td valign="top">
        	<table cellpadding="0" cellspacing="0" border="0" width="563">
            	<tr>
                	<td>
                       <img src="../images/spacer.gif" height="25" />
                    </td>
                </tr>
                <tr>
                	<td align="center">
                	     
                        New User? <asp:HyperLink ID="HyperLink1" runat="server" Target="register.aspx" ForeColor="#0066FF">Click here to Register >></asp:HyperLink><br />
        
                        <table align="center">
                         <tr><td colspan="2"></td></tr>
                         <tr>
                         <td align="right" class="style1">Login:</td>
                         <td><asp:TextBox id="userName" Text="" Width="125px" runat="server"/></td>
                         </tr>
                         <tr>
                        <td align="right" class="style1">Password:</td>
                         <td><asp:TextBox id="password" TextMode="password" Text="" Width="125px" runat="server"/></td>
                         </tr>
                          <tr>
                          <td colspan="2"> 
                              <asp:Label ID="error" runat="server" ForeColor="Red" 
                                  Text="Incorrect Username / Password"></asp:Label>
                              </td></tr>
                         <td align="center" colspan="2"><asp:Button ID="Button1" runat="server" Text="Login" 
                                 onclick="Button1_Click" />
                              </td>
                         </tr>
                        </table>

                    </td>
                </tr>
            </table>
        </td>
		<td valign="top"><img src="../images/temp_right_col.gif" alt="PMP Experts"></td>
	</tr>
    <tr>
    	<td colspan="5" bgcolor="#000000"><img src="../images/spacer.gif"></td>
    </tr>
    <tr>
    	<td colspan="5" bgcolor="#333333" id="footer"><p>&nbsp;<br />About Us&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;Instructor Led Courses&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;Self-Paced Courses |&nbsp;&nbsp;&nbsp;Class Schedule&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;Accreditations&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;Our Guarantee&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;Contact Us    </p><p>Pinnacle 3 - PMP Training Exam Preparation<br /><a href="mailto:info@pinnacle3.com">info@pinnacle3.com</a><br /> 888 808 4PMP (4767)<br />&copy;2005 - 2008, All Rights Reserved</p><p>&nbsp;</p><p>&nbsp;</p></td>
    </tr>
</table>
    </form>
</body>
</html>