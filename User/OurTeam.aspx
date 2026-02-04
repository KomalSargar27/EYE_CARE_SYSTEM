<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.master" AutoEventWireup="true" CodeFile="OurTeam.aspx.cs" Inherits="User_OurTeam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            color: #000000;
        }
        .auto-style11 {
            width: 53%;
            height: 181px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <table class="" align="center" width="90%">
        <tr>
            <td class="auto-style9">
                <br />
                <asp:Label ID="Label11" runat="server" Text="      Our Team" Font-Bold="True" Font-Names="Century" Font-Size="X-Large" ForeColor="Black" Height="30px" Width="200px" CssClass="auto-style10"></asp:Label>
                <br />
                <span style="color: rgb(40, 40, 40); font-family: Poppins, sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(239, 238, 242); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Our doctors have more than a decade of experience in treating eye patients. We have general eye care doctors who cater to eye patients. Our topmost priority is the comfort and well-being of the patients. We have successfully treated patient succefully.</span><hr />
            </td>
        </tr>
        <tr>
            <td>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" CellPadding="5" CellSpacing="5">
                <ItemTemplate>
                    <table class="auto-style11">
                        <tr>
                            <td>
                                <asp:Image ID="Image6" runat="server" Height="169px" Width="351px" ImageUrl='<%# Eval("photo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="lblname" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="lblquali" runat="server" Text='<%# Eval("qualification") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
</asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT DISTINCT [photo], [name], [qualification] FROM [ManageDoctor]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

