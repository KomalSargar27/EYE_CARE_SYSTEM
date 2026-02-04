<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.master" AutoEventWireup="true" CodeFile="PatientRegistration.aspx.cs" Inherits="User_PatientRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
   
      
        .auto-style9 {
            height: 47px;
        }
   
      
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/banner1.jpg" Height="550px">
        <br />
   
       <br /> <table align="" cellpadding="4" class="auto-style9">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
    <table class="" cellpadding="4" style="background-color: #FFFFFF">
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" CssClass="auto-style9" Font-Bold="True" Font-Names="Century" Font-Size="Large" ForeColor="#FF6600" Height="30px" Text="Patient Registration" Width="341px" style="color: #000000; font-size: x-large"></asp:Label>
                &nbsp;<hr /> </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Font-Names="Century" Height="30px" Text="User Id" Width="180px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtuserid" runat="server" Height="27px" Width="192px" Enabled="False" ReadOnly="True" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label13" runat="server" Font-Names="Century" Height="30px" Text="Patient Name" Width="180px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpname" runat="server" Height="27px" Width="192px" Font-Size="Medium"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtpname" ErrorMessage="Enter Name" ForeColor="Red" ValidationExpression="^[a-zA-Z]+(\s+[a-zA-z]+)*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Font-Names="Century" Height="30px" Text="Address" Width="180px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" Height="27px" Width="192px" Font-Size="Medium"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtaddress" ErrorMessage="Enter Address" ForeColor="Red" ValidationExpression="^[a-zA-Z]+(\s+[a-zA-z]+)*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label15" runat="server" Font-Names="Century" Height="30px" Text="Email" Width="180px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="27px" Width="192px" Font-Size="Medium"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label16" runat="server" Font-Names="Century" Height="30px" Text="Mobile" Width="180px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmobile" runat="server" Height="27px" Width="192px" Font-Size="Medium"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmobile" ErrorMessage="Enter valid mobile no" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="Label17" runat="server" Font-Names="Century" Height="30px" Text="User Name" Width="180px"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtusername" runat="server" Height="27px" Width="192px" Font-Size="Medium"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtusername" ErrorMessage="Enter Valid User Name" ForeColor="Red" ValidationExpression="^[a-z]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label18" runat="server" Font-Names="Century" Height="30px" Text="Password" Width="180px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" Height="27px" Width="192px" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label20" runat="server" Font-Names="Century" Height="30px" Text="Confirm Password" Width="180px"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtconfirmpassword" runat="server" Height="27px" Width="192px" Font-Size="Medium"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" ErrorMessage="Password Incorrect" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label19" runat="server" Font-Names="Century" Height="30px" Text="Age" Width="180px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtage" runat="server" Height="27px" Width="192px" Font-Size="Medium"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtage" ErrorMessage="Enter Age" ForeColor="Red" ValidationExpression="[0-9]{2}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="btnsubmit" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" OnClick="btnsubmit_Click" Text="Submit" Width="200px" BackColor="Black" BorderStyle="None" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" Font-Bold="True" Font-Names="Century" Height="35px" OnClick="btncancel_Click" Text="Cancel" Width="200px" BackColor="Black" BorderStyle="None" ForeColor="White" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Already Have Account?<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/User/PatientLogin.aspx">Login</asp:HyperLink>
                <br />
            </td>
        </tr>
        </table></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

