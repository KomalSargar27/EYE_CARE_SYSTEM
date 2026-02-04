<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="User_Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 90%;
            border-left-style: solid;
            border-left-width: 1px;
            border-right: 1px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 1px;
            border-bottom: 1px solid #C0C0C0;
        }
        .auto-style9 {
            width: 100%;
            border:2px solid black;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Image ID="Image10" runat="server" Height="250px" ImageUrl="~/images/services1.png" Width="100%" />
    <br />
    <table  class="auto-style9">
        <tr>
            <td valign="top" align="center">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" CellPadding="5" CellSpacing="10" Width="100%">
                    <ItemTemplate>
                        <table class="auto-style9" cellpadding="7" >
                            <tr>
                                <td class="auto-style10">
                                    <strong>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("sname") %>'></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10">
                                    <asp:Image ID="Image12" runat="server" Height="250px" ImageUrl='<%# Eval("photo") %>' Width="442px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style11">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("sdetail") %>' Height="250px" Width="502px"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT DISTINCT [sname], [sdetail], [photo] FROM [ManageServices]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

