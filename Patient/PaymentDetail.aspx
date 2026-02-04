<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="PaymentDetail.aspx.cs" Inherits="Patient_PaymentDetail" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 812px;
        }
        .auto-style10 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>
                <div class="auto-style10">
                    <br />
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Century" Font-Size="X-Large" Text="Payment Details"></asp:Label>
                </div>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label16" runat="server" Font-Names="Century" Text="Payment Id" Font-Size="Large"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblpayid" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label17" runat="server" Font-Names="Century" Text="Order Id" Font-Size="Large"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbloid" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label18" runat="server" Font-Names="Century" Text="Payment Date" Font-Size="Large"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblpdat" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label19" runat="server" Font-Names="Century" Text="Customer Name" Font-Size="Large"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblcname" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label20" runat="server" Font-Names="Century" Text="GST" Font-Size="Large"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblgst" runat="server" Text="18"></asp:Label>
                            &nbsp;%</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label21" runat="server" Font-Names="Century" Text="Discount" Font-Size="Large"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbldis" runat="server" Text="10"></asp:Label>
                        &nbsp;%</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label22" runat="server" Font-Names="Century" Text="Total Amount" Font-Size="Large"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbltamt" runat="server" ForeColor="Red" Text="Label"></asp:Label>&nbsp;Rs.
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label23" runat="server" Font-Names="Century" Text="Net Amount" Font-Size="Large"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblnet" runat="server" ForeColor="Red" Text="Label"></asp:Label>&nbsp;Rs.
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="Label32" runat="server" Font-Names="Century" Text="Payment Method" Font-Size="Large"></asp:Label>
&nbsp;&nbsp;<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:RadioButton ID="rd1" runat="server" Text="COD(Cash On Delivery)" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="rd" Font-Bold="False" Font-Names="Century" Font-Size="Large" AutoPostBack="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="rd2" runat="server" Text="UPI" OnCheckedChanged="RadioButton2_CheckedChanged" GroupName="rd" Font-Bold="False" Font-Names="Century" Font-Size="Large" AutoPostBack="True" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:ImageButton ID="image1" runat="server" Height="138px" ImageUrl="~/images/Scanner.jpg" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnplaceorder" runat="server" Font-Bold="True" Font-Names="Century" Font-Size="Medium" Text="Place Order" OnClick="btnplaceorder_Click" BackColor="#0099CC" BorderStyle="None" ForeColor="White" Height="35px" Width="200px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnprintbill" runat="server" Font-Bold="True" Font-Names="Century" Font-Size="Medium" Text="Print Bill" OnClick="btnprintbill_Click" Enabled="False" BackColor="#0099CC" BorderStyle="None" ForeColor="White" Height="35px" Width="200px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="50px" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="350px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                </table>

            </td>
        </tr>
    </table>
                

            </asp:Content>

