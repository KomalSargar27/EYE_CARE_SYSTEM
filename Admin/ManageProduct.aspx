<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ManageProduct.aspx.cs" Inherits="Admin_ManageProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 253px;
        }
        .auto-style5 {
       
        }
        .auto-style6 {
      
        }
        .auto-style8 {
          
        }
        .auto-style10 {
            font-size: large;
            width: 253px;
            background-color: #FFFFFF;
        }
        .auto-style11 {
            color: #FFFFFF;
            width: 230px;
        }
        .auto-style12 {
            width: 230px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Century" Font-Size="X-Large" ForeColor="Black" Text="Manage Product"></asp:Label>
                <hr />
            </td>
            <td rowspan="8">
                <asp:Image ID="Image1" runat="server" Height="146px" Width="187px" />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:Button ID="btnupload" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" Text="Upload" Width="100px" OnClick="btnupload_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Font-Names="Century" Height="30px" Text="Product Id" Width="180px" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtid" runat="server" Height="30px" Width="180px" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="Label3" runat="server" Font-Names="Century" Height="30px" Text="Product Name" Width="180px" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="180px" Font-Size="Medium" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Font-Names="Century" Height="30px" Text="Product Category" Width="258px" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:DropDownList ID="drpcategory" runat="server" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cname" Height="30px" Width="180px" Font-Size="Medium">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT DISTINCT [cname], [Id] FROM [ManageCategory]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label7" runat="server" Font-Names="Century" Height="30px" Text="Product Sub Category" Width="338px" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:DropDownList ID="drpsubcategory" runat="server" Height="30px" Width="180px" Font-Size="Medium">
                    <asp:ListItem>Men</asp:ListItem>
                    <asp:ListItem>Women</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="Label5" runat="server" Font-Names="Century" Height="30px" Text="Product Price" Width="180px" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtprice" runat="server" Height="30px" Width="180px" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label6" runat="server" Font-Names="Century" Height="30px" Text="Product Specification" Width="250px" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="txtspecification" runat="server" Height="30px" Width="180px" TextMode="MultiLine" Font-Size="Medium"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label8" runat="server" Font-Names="Century" Height="30px" Text="Available Stock" Width="250px" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="txtstock" runat="server" Height="31px" Width="180px" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnaddnew" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" Text="Add New" Width="150px" OnClick="btnaddnew_Click" BackColor="Black" BorderStyle="None" ForeColor="White"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" Text="Save" Width="150px" OnClick="btnsave_Click" BackColor="Black" BorderStyle="None" ForeColor="White"   />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" Text="Update" Width="150px" OnClick="btnupdate_Click" BackColor="Black" BorderStyle="None" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" Text="Delete" Width="150px" OnClick="btndelete_Click" BackColor="Black" BorderStyle="None" ForeColor="White"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" Text="Cancel" Width="150px" OnClick="btncancel_Click" BackColor="Black" BorderStyle="None" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" DataKeyNames="Id" DataSourceID="SqlDataSource2" BorderStyle="Solid" CellSpacing="2">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="pname" HeaderText="Product Name" SortExpression="pname" />
                        <asp:BoundField DataField="pcategory" HeaderText="Product Category" SortExpression="pcategory" />
                        <asp:BoundField DataField="psubcat" HeaderText="Product Subcat" SortExpression="psubcat" />
                        <asp:BoundField DataField="pprice" HeaderText="Product Price" SortExpression="pprice" />
                        <asp:BoundField DataField="pspecification" HeaderText="Pspecification" SortExpression="pspecification" />
                        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                        <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT DISTINCT * FROM [ManageProducts]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

