<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefineAss.aspx.cs" Inherits="GUCera.DefineAss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="XX-Large" ForeColor="#000066" style="padding-left:500px" Text="Define assignments"></asp:Label>
        </div>
        <asp:Label ID="Label2" runat="server" Text="Course id:"  Font-Names="Courier New"  Font-Size="Large"></asp:Label>
        <br />
        <asp:TextBox ID="cid" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Assignment number:"  Font-Names="Courier New"  Font-Size="Large"></asp:Label>
        <br />
        <asp:TextBox ID="assnum" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Assignment type:"  Font-Names="Courier New"  Font-Size="Large"></asp:Label>
        <br />
        <asp:TextBox ID="typ" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Assignment full grade:"  Font-Names="Courier New"  Font-Size="Large"></asp:Label>
        <br />
        <asp:TextBox ID="grade" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Assignment weight:"  Font-Names="Courier New"  Font-Size="Large"></asp:Label>
        <br />
        <asp:TextBox ID="wei" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Assignment deadline: (DD/MM/YYYY format)"  Font-Names="Courier New"  Font-Size="Large"></asp:Label>
        <br />
        <asp:TextBox ID="dead" runat="server"  Width="230px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Content:"  Font-Names="Courier New"  Font-Size="Large"></asp:Label>
        <br />
        <asp:TextBox ID="cont" runat="server" Height="60px" Width="230px" BorderStyle="Inset" BorderWidth="2px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="def" runat="server" Text="Add" Height="50px" style="margin-top: 0px"  Width="100px"  Font-Bold="True" Font-Names="Courier New" BorderStyle="Solid" OnClick="def_Click"/>
        <br />
    </form>
</body>
</html>
