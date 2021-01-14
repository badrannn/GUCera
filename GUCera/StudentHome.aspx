<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="GUCera.StudentHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="XX-Large" ForeColor="#000066" style="padding-left:600px" Text="Welcome"></asp:Label>

        </div>

        <p style="width: 149px">
            <asp:Label ID="Label2" runat="server" Text="Profile"></asp:Label>
        </p>
        <p style="width: 149px">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View" />
        </p>
        <p style="width: 149px">
            List All Courses</p>
        <p style="width: 149px">
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="List" />
        </p>
        <p style="width: 149px">
            Enroll in a Course</p>
        <p style="width: 149px">
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Enroll" />
        </p>
        <p style="width: 149px">
            Add Credit Card</p>
        <p style="width: 149px">
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Add" />
        </p>
        <p style="width: 149px">
            View Promocodes</p>
        <p style="width: 149px">
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="View" />
        </p>
        <p style="width: 181px">
            View Assignments Content</p>
        <p style="width: 181px">
            <asp:Button ID="Button7" runat="server" Text="View" OnClick="Button7_Click" />
        </p>
        <p style="width: 181px">
            Submit Assignment</p>
        <p style="width: 181px">
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Submit" />
        </p>
        <p style="width: 181px">
            View Grades of Assignments</p>
        <p style="width: 181px">
            <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="View" />
        </p>
        <p style="width: 181px">
            Add Feedback</p>
        <p style="width: 181px">
            <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Add" />
        </p>
        <p style="width: 181px">
            List Certificates</p>

        <p style="width: 149px">
            <asp:Button ID="Button11" runat="server" Text="List" OnClick="Button11_Click" />
        </p>
        <p style="width: 149px">
            Add Number</p>
        <p style="width: 149px">
            <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="Add" />
        </p>

    </form>
</body>
</html>
