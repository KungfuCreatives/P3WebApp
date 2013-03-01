<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ClassHeader.ascx.cs" Inherits="P3WebApp.ClassHeader" %>
<table cellpadding="2" cellspacing="0" border="0" width="100%">
    <tr>
        <td valign="top" width="200px" align="right"><asp:image ID="imgCourse" runat="server" ImageUrl="images/pmp-instruction.jpg" alt="PMP Course Image" />
        </td>
        <td valign="top" width="350px" class="style4">
        <table cellpadding="0" cellspacing="4" border="0">
            <tr>
                <td class="style4"><strong>Course Title:</strong></td>
                <td class="style4"><asp:Label ID="lblTitle" runat="server" Text="" /></td>
            </tr>
            <tr>
                <td class="style4"><strong><nobr>Course Number:</nobr></strong></td>
                <td class="style4"><asp:Label ID="lblCourseNumber" runat="server" Text="" /></td>
            </tr>
            <tr>
                <td class="style4"><strong>Duration:</strong></td>
                <td class="style4"><asp:Label ID="lblDuration" runat="server" Text="" /> days</td>
            </tr>
            <tr>
                <td class="style4"><strong>Credits:</strong></td>
                <td class="style4"><asp:Label ID="lblCredits" runat="server" Text="" /> PDUs</td>
            </tr>
            <tr>
                <td class="style4"><strong>Cost:</strong></td>
                <td class="style4"><asp:Label ID="lblCost" runat="server" Text="" /></td>
            </tr>
            </table>
            <br />
        </td>
    </tr>
</table>