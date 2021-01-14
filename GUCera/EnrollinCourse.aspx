<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnrollinCourse.aspx.cs" Inherits="GUCera111.EnrollinCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enroll in course<br />
            <br />
            Student ID<br />
            <asp:TextBox ID="studentid1" runat="server"></asp:TextBox>
            <br />
            <br />
            Course ID<br />
            <asp:TextBox ID="courseid1" runat="server"></asp:TextBox>
            <br />
            <br />
            Instructor ID<br />
            <asp:TextBox ID="instructorid1"   runat ="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" OnClick="Enroll" runat="server" Text="Enroll" />
            <br />
        </div>
    </form>
</body>
</html>
