<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAssignmentsContent.aspx.cs" Inherits="GUCera.ViewAssignmentsContent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter Course Id<br />
            <asp:TextBox ID="CourseIdforAssContent" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="ViewAssContent" Text="View" />
        </div>
    </form>
</body>
</html>
