<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentSubmitAssign.aspx.cs" Inherits="GUCera.StudentSubmitAssign" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Assignment Type<br />
            <asp:TextBox ID="AssType" runat="server"></asp:TextBox>
            <br />
            <br />
            Assignment number<br />
            <asp:TextBox ID="AssNo" runat="server"></asp:TextBox>
            <br />
            <br />
            Course Id<br />
            <asp:TextBox ID="Courseid" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="SubmitAssign" Text="Submit" />
        </div>
    </form>
</body>
</html>
