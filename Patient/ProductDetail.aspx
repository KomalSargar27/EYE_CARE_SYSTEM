<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="Patient_ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style10 {
            font-weight: bold;
        }
        .auto-style11 {
            font-size: large;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="" align="center">
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" >
                    <ItemTemplate>
                        <table class="auto-style11">
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
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
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
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
                                <td colspan="2">Total: Rs.<asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label>
                                    &nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <strong>
                                    <asp:Button ID="btnaddtocart" runat="server" BackColor="#006699" BorderStyle="None" CssClass="auto-style10" ForeColor="White" Height="35px"  Text="Add To Cart" Width="250px" CommandArgument='<%# Eval("Id") %>' OnClick="btnaddtocart_Click1" />
                                    &nbsp;&nbsp;
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" BackColor="#006699" BorderStyle="None" Font-Bold="True" Font-Names="Century" Font-Size="Small" ForeColor="White" Height="45px" PostBackUrl="~/Patient/Product.aspx" Text="Back" Width="99px" />
                                    <br />
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
            </td>
        </tr>
    </table>
</asp:Content>

