<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUCera.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="XX-Large" ForeColor="#000066" style="padding-left:600px" Text="Welcome"></asp:Label>
        </p>
        <p>
            For student register:</p>
        <p>
            &nbsp;<asp:Button ID="stureg" runat="server" Height="45px" OnClick="stureg_Click" style="margin-top: 0px" Text="Register" Width="132px" />
        </p>
        <p>
            For Instructor register:</p>
        <p>
            <asp:Button ID="instreg" runat="server" Height="46px" OnClick="instreg_Click" Text="Register" Width="136px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Already a user? click here</asp:LinkButton>  
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
