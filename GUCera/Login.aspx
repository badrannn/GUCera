<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GUCera.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Enter your ID:</p>
        <p>
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
        </p>
        <p>
            Enter your password:</p>
        <p>
            <asp:TextBox ID="password" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="signin" runat="server" Text="Login" OnClick="signin_Click" />
        </p>
    </form>
</body>
</html>
