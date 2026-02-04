<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ManageDoctor.aspx.cs" Inherits="Admin_ManageDoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style9 {
            width: 36px;
        }
        .auto-style10 {
            width: 36px;
            height: 45px;
        }
        .auto-style12 {
            width: 36px;
            height: 34px;
        }
        .auto-style14 {
            width: 307px;
        }
        .auto-style13 {
            font-weight: bold;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style1">
        <tr>
            <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Century" Font-Size="X-Large" ForeColor="Black" Height="30px" Text="Manage Doctor" Width="265px"></asp:Label>
                &nbsp;<hr />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label2" runat="server" Font-Names="Century" Height="30px" Text="Doctor Id" Width="160px" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtid" runat="server" Height="35px" Width="253px" Font-Size="Medium" ></asp:TextBox>
            </td>
            <td rowspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="220px" Width="219px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Font-Names="Century" Height="30px" Text="Name" Width="150px" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtname" runat="server" Height="35px" Width="253px" Font-Size="Medium" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label4" runat="server" Font-Names="Century" Height="30px" Text="Address" Width="150px" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtaddress" runat="server" Height="35px" Width="253px" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label5" runat="server" Font-Names="Century" Height="30px" Text="Qualification" Width="150px" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtqualification" runat="server" Height="35px" Width="253px" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="Label6" runat="server" Font-Names="Century" Height="30px" Text="Email" Width="150px"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtemail" runat="server" Height="35px" Width="253px" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label7" runat="server" Font-Names="Century" Height="30px" Text="Mobile" Width="150px" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtmobile" runat="server" Height="35px" Width="253px" Font-Size="Medium"></asp:TextBox>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Font-Bold="True" Font-Names="Century" Height="30px" Width="258px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label8" runat="server" Font-Names="Century" Height="30px" Text="Specialization" Width="150px" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtspecialization" runat="server" Height="35px" Width="253px" Font-Size="Medium"></asp:TextBox>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnupload" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" Text="Upload" Width="180px" OnClick="btnupload_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<strong><asp:Button ID="btnaddnew" runat="server" BackColor="Black" CssClass="auto-style13" Font-Names="Century" Height="35px" Text="Add New" Width="150px" OnClick="btnaddnew_Click1" BorderStyle="None" ForeColor="White"   />
                </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;<asp:Button ID="btnsave" runat="server" BackColor="Black" CssClass="auto-style13" Font-Names="Century" Height="35px"  Text="Save" Width="150px" OnClick="btnsave_Click" BorderStyle="None" ForeColor="White"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" BackColor="Black" CssClass="auto-style13" Font-Names="Century" Height="35px"  Text="Update" Width="150px" OnClick="btnupdate_Click" BorderStyle="None" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" BackColor="Black" CssClass="auto-style13" Font-Names="Century" Height="35px" Text="Delete" Width="150px" OnClick="btndelete_Click" BorderStyle="None" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" CssClass="auto-style13" Font-Names="Century" Height="35px"  Text="Cancel" Width="150px" BackColor="Black" OnClick="btncancel_Click" BorderStyle="None" ForeColor="White" />
&nbsp;</strong></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black"  Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BorderStyle="Solid" CellSpacing="2">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id" HeaderText="Id" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                        <asp:BoundField DataField="qualification" HeaderText="Qualification" SortExpression="qualification" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                        <asp:BoundField DataField="specialization" HeaderText="Specialization" SortExpression="specialization" />
                        <asp:BoundField DataField="photo" HeaderText="Photo" SortExpression="photo" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT DISTINCT * FROM [ManageDoctor]"></asp:SqlDataSource>
             </td>
                   </tr>
        </table> 
        

</asp:Content>

