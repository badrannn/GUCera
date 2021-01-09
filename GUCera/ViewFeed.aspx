<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewFeed.aspx.cs" Inherits="GUCera.ViewFeed" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                     <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="XX-Large" ForeColor="#000066" style="padding-left:500px" Text="View feedbacks"></asp:Label>
        </div>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Enter course id:" Font-Names="Courier New"  Font-Size="Large"></asp:Label>

        <br />
        <asp:TextBox ID="course" runat="server"></asp:TextBox>

        <br />

        <br />
        <asp:Button ID="viewf" runat="server" Text="View" Height="50px" style="margin-top: 0px"  Width="100px"  Font-Bold="True" Font-Names="Courier New" BorderStyle="Solid" OnClick="viewf_Click" />

    </form>
</body>
</html>
