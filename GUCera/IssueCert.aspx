<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IssueCert.aspx.cs" Inherits="GUCera.IssueCert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                     <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="XX-Large" ForeColor="#000066" style="padding-left:500px" Text="Issue certificate"></asp:Label>

        </div>
        <asp:Label ID="Label2" runat="server" Text="Student id:" Font-Italic="False" Font-Size="Large"></asp:Label>
        <br />
        <asp:TextBox ID="student" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Course id:" Font-Italic="False" Font-Size="Large"></asp:Label>
        <br />
        <asp:TextBox ID="course" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="issue" runat="server" Text="Issue" Height="50 px" Width="100px"  style="margin:auto" Font-Bold="True" Font-Names="Courier New" OnClick="issue_Click" />
        <br />

    </form>
</body>
</html>
