<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ManageOrder.aspx.cs" Inherits="Admin_ManageOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OId" DataSourceID="SqlDataSource1" Width="100%" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="307px">
        <Columns>
            <asp:BoundField DataField="OId" HeaderText="OId" ReadOnly="True" SortExpression="OId" />
            <asp:BoundField DataField="DeliverAddress" HeaderText="DeliverAddress" SortExpression="DeliverAddress" />
            <asp:BoundField DataField="OContact" HeaderText="OContact" SortExpression="OContact" />
            <asp:BoundField DataField="Odate" HeaderText="Odate" SortExpression="Odate" />
            <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
            <asp:BoundField DataField="OrderStatus" HeaderText="OrderStatus" SortExpression="OrderStatus" />
            <asp:BoundField DataField="CustName" HeaderText="CustName" SortExpression="CustName" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT DISTINCT * FROM [Order]" 
        UpdateCommand="update [Order] set [OrderStatus]=@OrderStatus where [OId]=@OId"
        DeleteCommand="delete from [Order] where [OId] =@OId"></asp:SqlDataSource>
    
</asp:Content>

