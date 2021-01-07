<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegister.aspx.cs" Inherits="GUCera.StudentRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
         <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="XX-Large" ForeColor="#000066" style="padding-left:500px" Text="Student register"></asp:Label>
        &nbsp;</p>
    <p>
        First name:</p>
    <p>
        <asp:TextBox ID="firstname" runat="server"></asp:TextBox>
        </p>
    <p>
        Last name:</p>
    <p>
        <asp:TextBox ID="lastname" runat="server"></asp:TextBox>
        </p>
    <p>
        E-mail:</p>
    <p>
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
        </p>
    <p>
        Password:</p>
    <p>
        <asp:TextBox ID="password" runat="server"></asp:TextBox>
        </p>
        <p>
            Address:</p>
        <p>
        <asp:TextBox ID="address" runat="server" ></asp:TextBox>
        </p>
    <p>
        Gender (0 Male/1 Female) :</p>
        <p>
            <asp:TextBox ID="gender" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="reg1" runat="server" Text="Register" BorderColor="#000066" Height="50px" Width="200px" OnClick="reg1_Click"  />
    </form>
</body>
</html>
