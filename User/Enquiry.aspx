<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="User_Enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style6
        {
            height: 55px;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            height: 55px;
            text-align: left;
        }
        .auto-style11 {
            height: 55px;
            width: 506px;
        }
        .auto-style12 {
            width: 506px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Image ID="Image3" runat="server" Height="250px" ImageUrl="~/images/contact1.png" Width="100%" />
                 <table align="center" cellpadding="2" cellspacing="2" class="">
    <tr>
        <td class="style6" colspan="2">
            <h3 style="outline: none; box-sizing: border-box; margin: 0px; padding: 0px 0px 5px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-weight: 700; font-stretch: inherit; font-size: 28px; line-height: 44px; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; max-width: 560px; color: rgb(40, 40, 40); letter-spacing: 1px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Please call<span>&nbsp;</span><a href="tel:+917824001110" style="outline: none; box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; color: rgb(249, 191, 52); text-decoration: none; cursor: pointer;">+917824001110</a><span>&nbsp;</span>if 
                urgent</h3>
            <p> Thanks for your interest in our clinic. Welcome to your first step towards Healthy Eyes</p>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style11">
            <asp:TextBox ID="txtname" runat="server" Height="30px" Width="300px" Font-Size="Medium"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtname" ErrorMessage="Enter Name" ForeColor="Red" ValidationExpression="^[a-zA-Z]+(\s+[a-zA-z]+)*$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Mobno&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style12">
            <asp:TextBox ID="txtmobno" runat="server" Height="30px" Width="300px" Font-Size="Medium"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmobno" ErrorMessage="Enter mobile no" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style11">
            <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="300px" Font-Size="Medium"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Subject</td>
        <td class="auto-style12">
            <asp:TextBox ID="txtsubject" runat="server" Height="30px" Width="300px" Font-Size="Medium"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtsubject" ErrorMessage="Enter Subject" ForeColor="Red" ValidationExpression="^[a-zA-Z]+(\s+[a-zA-z]+)*$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Message&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style12">
            <asp:TextBox ID="txtmessage" runat="server" Height="76px" TextMode="MultiLine" Width="292px" Font-Size="Medium"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtmessage" ErrorMessage="Enter Message" ForeColor="Red" ValidationExpression="^[a-zA-Z]+(\s+[a-zA-z]+)*$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="btnsubmit" runat="server" BackColor="#003366" BorderStyle="None" ForeColor="White" Height="37px" onclick="btnsubmit_Click" style="font-weight: 700" Text="Submit" Width="200px" />
            &nbsp;&nbsp;</td>
    </tr>
</table>

</asp:Content>

