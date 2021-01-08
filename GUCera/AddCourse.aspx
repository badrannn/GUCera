<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="GUCera.AddCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="XX-Large" ForeColor="#000066" style="padding-left:550px" Text="Add Course"></asp:Label>
        </div>
        <asp:Label ID="Label2" runat="server" Text="Course name:" Font-Names="Courier New"  Font-Size="Large"></asp:Label>
        <br />
        <asp:TextBox ID="courseName" runat="server"></asp:TextBox>
        <br />
        <p>
        <asp:Label ID="Label3" runat="server" Text="Credit hours:" Font-Names="Courier New"  Font-Size="Large"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="creditHours" runat="server"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label4" runat="server" Text="Price:" Font-Names="Courier New"  Font-Size="Large"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="price" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="addco" runat="server" Text="Add" OnClick="addco_Click" Height="50px" style="margin-top: 0px"  Width="100px"  Font-Bold="True" Font-Names="Courier New" BorderStyle="Solid" />
        </p>
    </form>
</body>
</html>
