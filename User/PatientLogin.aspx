<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.master" AutoEventWireup="true" CodeFile="PatientLogin.aspx.cs" Inherits="User_PatientLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
          
        }
        .auto-style9 {
            
        }
        .auto-style10 {
            text-decoration: none;
        }
        .auto-style12 {
            width: 570px;
            height: 340px;
        }
        .auto-style13 {
            height: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/banner1.jpg" Height="550px">
        <br />
        <br />
        <br />
        <br />
   
       <br /> <table align="" cellpadding="8" class="auto-style9">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
                    <table class="auto-style12" style="background-color: #FFFFFF">
                        <tr>
                            <td class="auto-style13" colspan="2">&nbsp;<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Century" Font-Size="X-Large" ForeColor="Black" Height="30px" Text="Patient Login" Width="366px"></asp:Label>
                                <hr />
                                <br />
                               </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label13" runat="server" Font-Names="Century" Height="30px" Text="User Name" Width="150px" Font-Bold="True" Font-Size="Large"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtusername" runat="server" Height="30px" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label14" runat="server" Font-Names="Century" Height="30px" Text="Password" Width="150px" Font-Bold="True" Font-Size="Large"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtpassword" runat="server" Height="30px" TextMode="Password" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;&nbsp;
                                <asp:Button ID="btnlogin" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" OnClick="btnlogin_Click" Text="Login" Width="200px" BackColor="Black" BorderStyle="None" ForeColor="White" Font-Size="Medium" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btncancel" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" OnClick="btncancel_Click" Text="Cancel" Width="200px" BackColor="Black" BorderStyle="None" ForeColor="White" Font-Size="Medium" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Don&#39;t have an account ?<asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style10" Font-Italic="False" Font-Names="Century" ForeColor="Blue" NavigateUrl="~/User/PatientRegistration.aspx">Signup</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

