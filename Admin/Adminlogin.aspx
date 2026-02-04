<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Admin_Adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
 
        }
        .auto-style5 {
        
        }
        .auto-style6 {
        
        }
        .auto-style7 {
          
        }
        .auto-style8 {
         
        }
        .auto-style9 {
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/banner1.jpg" Height="718px">
        <br />
        <br />
        <br />
        <br />
   
       <br /> <table align="" cellpadding="8">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style9">
  
        <table class="auto-style9" style="font-family: Arial, Helvetica, sans-serif">
            <tr>
                <td colspan="2" class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Image ID="Image1" runat="server" Height="71px" ImageUrl="~/images/logo3.png" Width="162px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Font-Bold="True" Font-Names="Century" Font-Size="X-Large" ForeColor="#3333FF" Height="45px" Text="Admin Login" Width="246px"></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Font-Names="Century" Height="30px" Text="                               User Name" Width="150px" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" Height="32px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label4" runat="server" BorderStyle="None" Height="30px" Text="Password" Width="150px" Font-Names="Century" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtpassword" runat="server" Height="32px" Width="250px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnlogin" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" Text="Login" Width="180px" OnClick="btnlogin_Click" BackColor="Black" BorderStyle="None" ForeColor="White" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btncancel" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" Text="Cancel" Width="180px" OnClick="btncancel_Click" BackColor="Black" BorderStyle="None" ForeColor="White" />
                    &nbsp;&nbsp;</td>
            </tr>
        </table>
    </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </div>
    </form>
</body>
</html>
