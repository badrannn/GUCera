<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCreditCard.aspx.cs" Inherits="GUCera111.AddCreditCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Add credit card<br />
            <br />
            Student ID<br />
            <asp:TextBox ID="studentid" runat="server"></asp:TextBox>
            <br />
            <br />
            Card number<br />
            <asp:TextBox ID="cnumber" runat="server"></asp:TextBox>
            <br />
            <br />
            Card holder name<br />
            <asp:TextBox ID="hname" runat="server"></asp:TextBox>
            <br />
            <br />
            Expiry date<br />
            <asp:TextBox ID="edate" runat="server"></asp:TextBox>
            <br />
            <br />
            CVV<br />
            <asp:TextBox ID="cvv" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Add" Text="Add" />
            <br />
        </div>
    </form>
</body>
</html>
