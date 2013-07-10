<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MiniContactForm.ascx.cs" Inherits="P3WebApp.MiniContactForm" %>
<telerik:RadAjaxPanel runat="server" ID="rapMiniContact" LoadingPanelID="ralp">
<asp:Panel runat="server" ID="pnlForm">
<div class="mini-contact-wrapper"> 
    <div class="header">
        <h3>Questions?</h3>
    </div>
    <div class="input-box">
        <asp:TextBox runat="server" ID="txtName" Width="160px" MaxLength="100"></asp:TextBox>
    </div>
    <div class="input-box">
        <asp:TextBox runat="server" ID="txtEmail" Width="160px" MaxLength="100"></asp:TextBox>
    </div>
    <div class="input-box">
        <asp:TextBox runat="server" ID="txtQuestions" Font-Names="Arial" TextMode="MultiLine" Rows="4" Width="180px"></asp:TextBox>
    </div>
    <div class="submit-button">
        <asp:Button runat="server" ID="btnSubmit" Text="Send" 
            onclick="btnSubmit_Click" OnClientClick="_gaq.push(['_trackEvent', 'Submissions', 'ContactSent', 'ContactForm',, false]);"  />
    </div>
</div>
</asp:Panel>
<asp:Panel runat="server" ID="pnlMessage" Visible="false">
<div class="mini-contact-wrapper">
    <asp:Label runat="server" ID="lblMessage"></asp:Label><br />
    <asp:LinkButton runat="server" ID="lbAnother" onclick="lbAnother_Click">Send another note</asp:LinkButton>
</div>
</asp:Panel>
</telerik:RadAjaxPanel>
<telerik:RadAjaxLoadingPanel ID="ralp" runat="server" Skin="Default" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="Scripts/watermark/jquery.watermark.js"></script>
<telerik:RadCodeBlock runat="server" id="rcb">
<script type="text/javascript">
    function pageLoad() { 
        $('#<%=txtName.ClientID %>').watermark('Name');
        $('#<%=txtEmail.ClientID %>').watermark('Email');
        $('#<%=txtQuestions.ClientID %>').watermark('Question');
    }
</script>
</telerik:RadCodeBlock>