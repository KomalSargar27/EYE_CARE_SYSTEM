<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="User_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 80%;
        }

        .style6
        {
            height: 55px;
        }
        .auto-style8 {
            height: 55px;
            text-align: center;
            font-size: large;
        }
        .auto-style9 {
            height: 116px;
        }
        .auto-style10 {
            height: 55px;
            text-align: left;
            width: 252px;
        }
        .auto-style11 {
            width: 252px;
        }
        .auto-style12 {
            height: 55px;
            width: 252px;
        }
        .auto-style13 {
            height: 55px;
            width: 505px;
        }
        .auto-style14 {
            width: 505px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table align="center" cellpadding="4" class="auto-style7">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <h2 style="outline: none; box-sizing: border-box; margin: 0px 0px 35px; padding: 0px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-weight: 400; font-stretch: inherit; font-size: 33px; line-height: 42px; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; letter-spacing: 2px; color: rgb(40, 40, 40); orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">YOUR FEEDBACK IS ATMOST<br style="outline: none; box-sizing: border-box;" />
                    IMPORTANT FOR US TO IMPROVE</h2>
            </td>
        </tr>
        <tr>
            <td>
<table align="center" cellpadding="2" cellspacing="2" class="">
    <tr>
        <td class="auto-style10">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Century" Font-Size="Large" Text="Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style13">
            <asp:TextBox ID="txtname" runat="server" Height="30px" Width="300px" Font-Size="Medium"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtname" ErrorMessage="Enter Name" ForeColor="Red" ValidationExpression="^[a-zA-Z]+(\s+[a-zA-z]+)*$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Century" Font-Size="Large" Text="Email"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style14">
            <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="300px" Font-Size="Medium"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">
            <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Century" Font-Size="Large" Text="Address"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style13">
            <asp:TextBox ID="txtaddress" runat="server" Height="30px" Width="300px" Font-Size="Medium"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtaddress" ErrorMessage="Enter Address" ForeColor="Red" ValidationExpression="^[a-zA-Z]+(\s+[a-zA-z]+)*$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Century" Font-Size="Large" Text="Age"></asp:Label>
        </td>
        <td class="auto-style14">
            <asp:TextBox ID="txtage" runat="server" Height="30px" Width="300px" Font-Size="Medium"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtage" ErrorMessage="Enter Age" ForeColor="Red" ValidationExpression="[0-9]{2}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Century" Font-Size="Large" Text="Your valuable response"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style14">
            <asp:TextBox ID="txtresponse" runat="server" Height="76px" TextMode="MultiLine" Width="299px" Font-Size="Medium"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtresponse" ErrorMessage="Enter Your Response" ForeColor="Red" ValidationExpression="^[a-zA-Z]+(\s+[a-zA-z]+)*$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="btnsubmit" runat="server" BackColor="#003366" BorderStyle="None" ForeColor="White" Height="37px"  style="font-weight: 700" Text="Submit" Width="200px" OnClick="btnsubmit_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btncancel" runat="server" BackColor="#003366" BorderStyle="None" ForeColor="White" Height="37px"  style="font-weight: 700" Text="Cancel" Width="200px" OnClick="btncancel_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
</table>

            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

