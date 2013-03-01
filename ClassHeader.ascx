<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ClassHeader.ascx.cs" Inherits="P3WebApp.ClassHeader" %>
<table cellpadding="2" cellspacing="0" border="0" width="100%">
    <tr>
        <td valign="top"><asp:image ID="imgCourse" runat="server" ImageUrl="images/pmp-instruction.jpg" alt="PMP Course Image" />
        </td>
        <td>&nbsp;</td>
        <td valign="top" width="100%" class="style4">
        <table cellpadding="0" cellspacing="4" border="0">
            <tr>
                <td class="style4"><strong>Course Title:</strong></td>
                <td class="style4"><asp:Label ID="lblTitle" runat="server" Text="" /></td>
            </tr>
            <tr>
                <td class="style4"><strong>Course Number:</strong></td>
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
           <%-- <asp:Panel runat="server" ID="pnlDiscount" Visible="false"><span style="color:red;">Discount of $<asp:Label ID="lblDiscount" runat="server" Text="" />!</span></asp:Panel>--%>
            <br />
        </td>
    </tr>
</table>