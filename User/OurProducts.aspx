<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.master" AutoEventWireup="true" CodeFile="OurProducts.aspx.cs" Inherits="User_OurProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
     
        .auto-style9 {
            color: #003366;
        }
        .auto-style10 {
            text-align: center;
        }
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Image ID="Image3" runat="server" Height="200px" ImageUrl="~/images/store.png" Width="100%" />

    <table class="">
        <tr>
            <td class="" valign="top">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <table align="center" class="auto-style8">
                            <tr>
                                <td>
                                    <asp:Button ID="btn1" runat="server" CommandArgument='<%# Eval("cname") %>'  Text='<%# Eval("cname") %>' BackColor="Black" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="35px" OnClick="btn1_Click1" Width="280px" />
                                </td>
                            </tr>
                        </table>
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT DISTINCT [cname] FROM [ManageCategory]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:DataList ID="DataList2" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource2"  RepeatColumns="4" RepeatDirection="Horizontal" Width="100%" CellPadding="10">
                    <ItemTemplate>
                        <table style="border: thin solid #808080">
                            <tr>
                                <td class="auto-style10">
                                    <strong>
                                    <asp:Label ID="Label11" runat="server" CssClass="auto-style9" Text='<%# Eval("pname") %>'></asp:Label>
                                    </strong>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="149px" ImageUrl='<%# Eval("photo") %>' Width="216px"  />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style10">
                                    Rs.<asp:Label ID="Label12" runat="server" Text='<%# Eval("pprice") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style10">
                                    <asp:Button ID="btnviewmore" runat="server" Font-Bold="True" Font-Names="Century" OnClick="btnviewmore_Click" Text="View More" BackColor="#006699" BorderStyle="None" CommandArgument='<%# Eval("Id") %>' ForeColor="White" Height="35px" Width="200px" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT DISTINCT * FROM [ManageProducts] WHERE ([pcategory] = @pcategory)">
                    <SelectParameters>
                        <asp:SessionParameter Name="pcategory" SessionField="cat" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    
</asp:Content>

