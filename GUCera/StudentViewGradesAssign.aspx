<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentViewGradesAssign.aspx.cs" Inherits="GUCera.StudentViewGradesAssign" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Assignment Number</div>
        <asp:TextBox ID="Assno" runat="server"></asp:TextBox>
        <br />
        <br />
        Assignment Type<br />
        <asp:TextBox ID="Asstype" runat="server"></asp:TextBox>
        <br />
        <br />
        Course Id<br />
        <asp:TextBox ID="courseid" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="ViewGrade" Text="View" />
    </form>
</body>
</html>
