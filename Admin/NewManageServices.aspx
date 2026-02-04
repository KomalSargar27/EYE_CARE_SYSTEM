<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="NewManageServices.aspx.cs" Inherits="Admin_NewManageServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style5 {
            height: 34px;
        }
        .auto-style2 {
            width: 221px;
        }
        .auto-style3 {
            width: 221px;
            height: 40px;
        }
        .auto-style4 {
            height: 40px;
        }
        .auto-style10 {
            height: 49px;
            font-size: large;
            background-color: #FFFFFF;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="2" class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Century" Font-Size="X-Large" ForeColor="Black" Height="30px" Text="Manage Services" Width="265px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Names="Century" Height="30px" Text="Service Id" Width="180px" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtid" runat="server" Height="30px" Width="200px" Font-Size="Medium"></asp:TextBox>
            </td>
            <td rowspan="3">
                <asp:Image ID="Image6" runat="server" CssClass="auto-style11" Height="175px" Width="257px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Font-Names="Century" Height="30px" Text="Service Name" Width="180px" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Font-Names="Century" Height="30px" Text="Service Detail" Width="180px" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdetail" runat="server" Height="30px" TextMode="MultiLine" Width="200px" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnaddnew" runat="server" Font-Bold="True" Font-Names="Century" Height="30px" Text="Add New" Width="120px" OnClick="btnaddnew_Click" BackColor="Black" ForeColor="White"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" Font-Bold="True" Font-Names="Century" Height="30px" Text="Save" Width="120px" OnClick="btnsave_Click" BackColor="Black" ForeColor="White"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" Font-Bold="True" Font-Names="Century" Height="30px" Text="Update" Width="120px" OnClick="btnupdate_Click" BackColor="Black" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" Font-Bold="True" Font-Names="Century" Height="30px" Text="Delete" Width="120px" OnClick="btndelete_Click" BackColor="Black" ForeColor="White" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncnacel" runat="server" Font-Bold="True" Font-Names="Century" Height="30px" Text="Cancel" Width="120px" OnClick="btncnacel_Click" BackColor="Black" ForeColor="White"  />
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupload" runat="server" Font-Bold="True" Font-Names="Century" Text="Upload" OnClick="btnupload_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
                        <asp:BoundField DataField="sdetail" HeaderText="sdetail" SortExpression="sdetail" />
                        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT DISTINCT * FROM [ManageServices]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

