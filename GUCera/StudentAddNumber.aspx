<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentAddNumber.aspx.cs" Inherits="GUCera.StudentAddNumber" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Add number<br />
            <asp:TextBox ID="number" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Addno" Text="Add" />
        </div>
    </form>
</body>
</html>
