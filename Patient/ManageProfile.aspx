<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="ManageProfile.aspx.cs" Inherits="Patient_ManageProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style10 {
        text-align: center;
        font-size: x-large;
    }
    .auto-style11 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
           
            <table align="center" class="auto-style1">
                 <tr>
            <td>
                <div class="auto-style10">
                    <strong>
                    <br />
                    Edit My Profile</div>
                <hr />
                </strong></td>
        </tr>
       
                <tr>
                    <td class="auto-style11">
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="234px" Width="541px">
                            <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <Fields>
                                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                                <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                                <asp:CommandField ShowEditButton="True" />
                            </Fields>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT * FROM [Registration] WHERE ([name] = @name)"
                            updatecommand="update Registration set [name]=@name,[address]=@address,[email]=@email,[mobile]=@mobile,[pname]=@pname,[password]=@password,[age]=@age where [id]=@id">
                            <SelectParameters>
                                <asp:SessionParameter Name="name" SessionField="user" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
           
    
</asp:Content>

