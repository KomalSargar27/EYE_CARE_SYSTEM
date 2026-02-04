<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="CartDetails.aspx.cs" Inherits="Patient_CartDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
         
        }
        .auto-style6 {
     
        }
        .auto-style7 {
       
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
       
        }
        .auto-style10 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" class="auto-style5">
        <tr>
            <td colspan="2" class="auto-style7">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PId" DataSourceID="SqlDataSource1" Width="100%" >
                    <Columns>
                        <asp:BoundField DataField="PId" HeaderText="PId" ReadOnly="True" SortExpression="PId" />
                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                        <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT DISTINCT * FROM [CartDetails] WHERE ([username] = @username)" DeleteCommand="delete from [CartDetails] where  [PId]=@PId ">
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="">&nbsp;</td>
            <td class="">&nbsp;</td>
        </tr>
        <tr>
            <td class="">
                <table class="">
                    <tr>
                        <td class="" colspan="2">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Century" Text="Shipping Details"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Names="Century" Text="Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server" Height="27px"  Width="236px" Font-Size="Medium"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Font-Names="Century" Text="Address"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtaddress" runat="server" Height="27px" Width="236px" Font-Size="Medium"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Font-Names="Century" Text="City"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtcity" runat="server" Height="27px" Width="236px" Font-Size="Medium"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Font-Names="Century" Text="Pin"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtpin" runat="server" Height="27px" Width="236px" Font-Size="Medium"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Font-Names="Century" Text="Contact"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtcontact" runat="server" Height="27px" Width="236px" Font-Size="Medium"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style2">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8" colspan="2">
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Century" Text="Order Detail"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Font-Names="Century" Text="Order Id"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblid" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Font-Names="Century" Text="Customer Name"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label11" runat="server" Font-Names="Century" Text="Order Date"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbldat" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label12" runat="server" Font-Names="Century" Text="Total Amount"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblamount" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label13" runat="server" Font-Names="Century" Text="Order Time"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbltime" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style10">
                <asp:Button ID="btnconf" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Century" Text="Confirm Order" OnClick="btnconf_Click" ForeColor="White" Height="50px"  />
            </td>
        </tr>
                </table> 
        
    
</asp:Content>

