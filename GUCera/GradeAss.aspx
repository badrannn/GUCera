<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GradeAss.aspx.cs" Inherits="GUCera.GradeAss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="XX-Large" ForeColor="#000066" style="padding-left:500px" Text="Grade assignments"></asp:Label>
        </div>
        <asp:Label ID="Label2" runat="server" Text="Student id:" Font-Names="Courier New"  Font-Size="Large"></asp:Label>
        <br />
        <asp:TextBox ID="stu" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Course id:" Font-Names="Courier New"  Font-Size="Large"></asp:Label>
        <br />
        <asp:TextBox ID="course" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Assignment number:" Font-Names="Courier New"  Font-Size="Large"></asp:Label>
        <br />
        <asp:TextBox ID="numb" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Assignment type:" Font-Names="Courier New"  Font-Size="Large"></asp:Label>
        <br />
        <asp:TextBox ID="typ" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Grade:" Font-Names="Courier New"  Font-Size="Large"></asp:Label>
        <br />
        <asp:TextBox ID="gra" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="grade" runat="server" Text="Grade" OnClick="grade_Click"  Height="50px" style="margin-top: 0px"  Width="100px"  Font-Bold="True" Font-Names="Courier New" BorderStyle="Solid"/>
    </form>
</body>
</html>
