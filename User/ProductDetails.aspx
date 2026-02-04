<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.master" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="User_ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            color: #000000;
        }
        .auto-style10 {
            font-weight: bold;
        }
        .auto-style11 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="" align="center">
        <tr>
            <td class="auto-style11">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="auto-style9">
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lblid" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    Used For:&nbsp;&nbsp;
                                    <asp:Label ID="lblsubcat" runat="server" Text='<%# Eval("psubcat") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lblpname" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    <asp:Image ID="Image1" runat="server" Height="169px" Width="339px" ImageUrl='<%# Eval("photo") %>' />
                                </td>
                                <td>Rs.<br />
                                    <asp:Label ID="lblprice" runat="server" Text='<%# Eval("pprice") %>'></asp:Label>
                                </td>
                                <td rowspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lblspecification" runat="server" Height="70px" Text='<%# Eval("pspecification") %>' Width="353px"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                                        <asp:ListItem>Select Qty</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">Total:<asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label>
                                    Rs.</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <strong>
                                    <asp:Button ID="btnaddtocart" runat="server" BackColor="#006699" BorderStyle="None" CssClass="auto-style10" ForeColor="White" Height="35px" OnClick="btnaddtocart_Click" Text="Add To Cart" Width="250px" PostBackUrl="~/User/PatientLogin.aspx" />
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnback" runat="server" PostBackUrl="~/User/OurProducts.aspx" Text="Back" BackColor="#006699" BorderStyle="None" Font-Bold="True" Font-Names="Century" ForeColor="White" Height="43px" Width="91px" />
                                    </strong>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT DISTINCT * FROM [ManageProducts] WHERE ([Id] = @Id2)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Id2" SessionField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

