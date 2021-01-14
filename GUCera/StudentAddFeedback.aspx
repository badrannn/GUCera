<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentAddFeedback.aspx.cs" Inherits="GUCera.StudentAddFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Your comment</div>
        <asp:TextBox ID="comment" runat="server"></asp:TextBox>
        <br />
        <br />
        Course Id<br />
        <asp:TextBox ID="courseid" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="AddFeedback" Text="Add Feedback" />
    </form>
</body>
</html>
