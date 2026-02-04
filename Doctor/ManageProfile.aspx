<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.master" AutoEventWireup="true" CodeFile="ManageProfile.aspx.cs" Inherits="Doctor_ManageProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td>
                &nbsp;
                &nbsp;&nbsp;&nbsp;
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="qualification" HeaderText="qualification" SortExpression="qualification" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                        <asp:BoundField DataField="specialization" HeaderText="specialization" SortExpression="specialization" />
                        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT DISTINCT * FROM [ManageDoctor] WHERE ([name] = @name)"
                    UpdateCommand ="update [ManageDoctor] set [name]=@name ,[address]=@address ,[qualification]=@qualification ,[email]=@email, [mobile]=@mobile, [specialization]=@specialization ,[photo]=@photo where [id]=@id">
                    <SelectParameters>
                        <asp:SessionParameter Name="name" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

