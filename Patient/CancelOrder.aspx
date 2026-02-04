<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="CancelOrder.aspx.cs" Inherits="Patient_CancelOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style10 {
        width: 90%;
    }
    .auto-style11 {
        text-align: center;
    }
    .auto-style12 {
        text-align: center;
        font-size: xx-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" class="auto-style10">
    <tr>
        <td class="auto-style12"><strong>Cancel Order<hr />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style11">    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OId" DataSourceID="SqlDataSource1" Width="100%" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="OId" HeaderText="OId" ReadOnly="True" SortExpression="OId" />
            <asp:BoundField DataField="DeliverAddress" HeaderText="DeliverAddress" SortExpression="DeliverAddress" />
            <asp:BoundField DataField="OContact" HeaderText="OContact" SortExpression="OContact" />
            <asp:BoundField DataField="Odate" HeaderText="Odate" SortExpression="Odate" />
            <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
            <asp:BoundField DataField="OrderStatus" HeaderText="OrderStatus" SortExpression="OrderStatus" />
            <asp:BoundField DataField="CustName" HeaderText="CustName" SortExpression="CustName" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT DISTINCT * FROM [Order]" DeleteCommand ="delete from [Order] where [OId]=@OId "></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

