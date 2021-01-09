<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAss.aspx.cs" Inherits="GUCera.ViewAss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="XX-Large" ForeColor="#000066" style="padding-left:500px" Text="View assignments"></asp:Label>
        </div>

        <p>
            <asp:Label ID="Label2" runat="server" Text="Enter Course id:"   Font-Names="Courier New"  Font-Size="Large"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="cid" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="vass" runat="server" Text="View" OnClick="vass_Click" Height="50px" style="margin-top: 0px"  Width="100px"  Font-Bold="True" Font-Names="Courier New" BorderStyle="Solid"/>
        </p>

    </form>
</body>
</html>
