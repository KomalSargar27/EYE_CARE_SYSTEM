<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ManageCategory.aspx.cs" Inherits="Admin_ManageCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
         
        }
        .auto-style3 {            text-align: center;
        }
        .auto-style4 {
        
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Century" Font-Size="X-Large" ForeColor="Black" Height="35px" Text="Manage Category" Width="321px"></asp:Label>
                <hr />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Names="Century" Height="30px" Text="Category Id" Width="180px" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtid" runat="server" Height="30px" Width="180px" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Font-Names="Century" Height="30px" Text="Category Name" Width="180px" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="180px" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Font-Names="Century" Height="30px" Text="Category Image" Width="180px" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="164px" Width="235px" />
                <br />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:Button ID="btnupload" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" OnClick="btnupload_Click" Text="Upload" Width="100px" />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnaddnew" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" OnClick="btnaddnew_Click" Text="Add New" Width="150px" BackColor="Black" BorderStyle="None" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" OnClick="btnsave_Click" Text="Save" Width="150px" BackColor="Black" BorderStyle="None" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" OnClick="btnupdate_Click" Text="Update" Width="150px" BackColor="Black" BorderStyle="None" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" OnClick="btndelete_Click" Text="Delete" Width="150px" BackColor="Black" BorderStyle="None" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" OnClick="btncancel_Click" Text="Cancel" Width="150px" BackColor="Black" BorderStyle="None" ForeColor="White" />
&nbsp; &nbsp;</td>
        </tr>
    </table>
</asp:Content>

