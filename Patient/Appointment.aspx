<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="Patient_Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
           
        }
        .auto-style3 {
        
        }
        .auto-style4 {
       
        }
        .auto-style5 {
        
        }
        .auto-style6 {
        
        }
        .auto-style10 {
      
        }
        .auto-style11 {
            color: #000000;
        }
        .auto-style12 {
            text-align: center;
        }
    .auto-style13 {
        width: 551px;
        height: 372px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/banner1.jpg" Height="550px">
        <br />
        <br />
        <br />
        <br />
   
       <br /> <table align="" cellpadding="8" class="auto-style9">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
   <table style="background-color: #FFFFFF" class="auto-style13">
        <tr>
            <td colspan="2" class="auto-style10">
                <div class="auto-style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Century" Font-Size="X-Large" ForeColor="Black" Height="35px" Text="Appointment" Width="180px" CssClass="auto-style11"></asp:Label>
                </div>
                <hr />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;<asp:Label ID="Label2" runat="server" Font-Names="Century" Height="30px" Text="Appointment Id" Width="236px" CssClass="auto-style11"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtapid" runat="server" Height="35px" Width="245px"  ReadOnly="True" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><asp:Label ID="Label3" runat="server" Font-Names="Century" Height="30px" Text="User Name" Width="236px" CssClass="auto-style11"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtuname" runat="server" Height="35px" Width="245px" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Names="Century" Height="30px" Text="Appointment Date" Width="236px" CssClass="auto-style11"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtapdate" runat="server" Height="35px" Width="245px" TextMode="Date" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" Font-Names="Century" Height="30px" Text="Appointment Time" Width="236px" CssClass="auto-style11"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtaptime" runat="server" Height="35px" Width="245px" TextMode="Time" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label6" runat="server" Font-Names="Century" Height="30px" Text="Problem Detail" Width="236px" CssClass="auto-style11"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtproblem" runat="server" Height="35px" Width="245px" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsubmit" runat="server" BackColor="Black" BorderStyle="None" Font-Bold="True" Font-Names="Century" Height="35px" Text="Submit" Width="180px" OnClick="btnsubmit_Click" ForeColor="White" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" BackColor="Black" BorderStyle="None" Font-Bold="True" Font-Names="Century" Height="35px" Text="Cancel" Width="180px" OnClick="btncancel_Click" ForeColor="White" />
            </td>
        </tr>
    </table></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

