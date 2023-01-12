<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="guestBook.aspx.cs" Inherits="newTest.guestBook" %>

<!DOCTYPE html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>[guestBook]</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="labels">
            <div class="label">
                <asp:Label ID="lbName" runat="server" Text="[name] "></asp:Label>
                <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbName" ErrorMessage="name required">*</asp:RequiredFieldValidator>
            </div>
            <div class="label">
                <asp:Label ID="lbEmail" runat="server" Text="[email] "></asp:Label>
                <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" ErrorMessage="wrong e-mail format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbEmail" ErrorMessage="email required">*</asp:RequiredFieldValidator>
            </div>
            <div class="label">
                <asp:Label ID="lbInscription" runat="server" Text="[inscription] "></asp:Label>
                <asp:TextBox ID="tbInscription" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="tbInscription" runat="server" ErrorMessage="inscription required">*</asp:RequiredFieldValidator>
            </div>
            <asp:Button ID="btnAddToBook" runat="server" Text="Add" OnClick="btnAddToBook_Click"/>
            <div class="label">
                <asp:Label ID="guestOnline" runat="server" Text="Guest online: "></asp:Label>
                <asp:Label ID="lbForGuestOnline" runat="server" Text="[guestOnline]"></asp:Label>
            </div>
             <div class="label">
                <asp:Label ID="guestTotal" runat="server" Text="Guest total: "></asp:Label>
                <asp:Label ID="lbForguestTotal" runat="server" Text="[guestTotal]"></asp:Label>
            </div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/guestForm.aspx" Text="Przejdź"></asp:HyperLink></div>

    </form>
</body>
</html>
