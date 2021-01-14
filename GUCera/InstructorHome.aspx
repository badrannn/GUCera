<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstructorHome.aspx.cs" Inherits="GUCera.InstructorHome" %>

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
        <asp:Label ID="Label2" runat="server" Font-Names="Courier New" Text="Add new course" Font-Size="Large"></asp:Label>
        <br />
        <br />
        <asp:Button ID="addcourse" runat="server" Height="50px" style="margin-top: 0px" Text="Add" Width="100px" OnClick="addcourse_Click" Font-Bold="True" Font-Names="Courier New" />
        <p>
        <asp:Label ID="Label3" runat="server" Font-Names="Courier New" Text="Assignments" Font-Italic="False" Font-Size="Large" ></asp:Label>
        </p>
        <p>
            <asp:Button ID="define" runat="server" Text="Define" OnClick="define_Click" Height="50 px" Width="100px"  style="margin:auto" Font-Bold="True" Font-Names="Courier New"/>
            <asp:Button ID="viewass" runat="server"  Text ="View" OnClick="viewass_Click" Height="50 px" Width="100px" style ="margin-left:10px" Font-Bold="True" Font-Names="Courier New"  />
            <asp:Button ID="gradeass" runat="server" Text="Grade" Height="50 px" Width="100px" style ="margin-left:10px" OnClick="gradeass_Click" Font-Bold="True" Font-Names="Courier New" />
        </p>
        <p>
        <asp:Label ID="Label4" runat="server" Font-Names="Courier New"  Text="Feedback" Font-Size="Large" ></asp:Label>
        </p>
        <p>
            <asp:Button ID="viewfeed" runat="server" Text="View" Height="50 px" Width="100px"  style="margin:auto" Font-Bold="True" Font-Names="Courier New" OnClick="viewfeed_Click" />
        </p>
        <p>
        <asp:Label ID="Label5" runat="server" Font-Names="Courier New" Text="Certificates" Font-Size="Large"></asp:Label>
    
        </p>
        <p>
            <asp:Button ID="issuecert" runat="server" Text="Issue" Height="50 px" Width="100px"  style="margin:auto" Font-Bold="True" Font-Names="Courier New" OnClick="issuecert_Click" />
    
        </p>
        <p>
        <asp:Label ID="Label6" runat="server" Font-Names="Courier New" Text="Add Number" Font-Size="Large"></asp:Label>
    
        </p>
        <p>
            <asp:Button ID="issuecert0" runat="server" Text="Add" Height="50 px" Width="100px"  style="margin:auto" Font-Bold="True" Font-Names="Courier New" OnClick="Addno" />
    
        </p>
        <p>
            &nbsp;</p>
        </form>
            
</body>
</html>
