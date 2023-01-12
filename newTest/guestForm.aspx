<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="guestForm.aspx.cs" Inherits="newTest.guestForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/guestBook.aspx" Text="Wróć">HyperLink</asp:HyperLink>
        </div>
        <asp:Xml ID="Xml1" runat="server" DocumentSource="~/book.xml" TransformSource="~/book.xslt"></asp:Xml>
    </form>
</body>
</html>
