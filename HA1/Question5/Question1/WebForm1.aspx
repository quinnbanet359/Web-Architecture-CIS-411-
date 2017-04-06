<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Question1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 563px;
        }
        .auto-style3 {
            width: 563px;
            height: 37px;
        }
        .auto-style4 {
            height: 37px;
        }
        .auto-style5 {
            width: 563px;
            height: 40px;
        }
        .auto-style6 {
            height: 40px;
        }
        .auto-style7 {
            width: 129px;
        }
        .auto-style8 {
            height: 37px;
            width: 129px;
        }
        .auto-style9 {
            height: 40px;
            width: 129px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="titleLbl" runat="server" Text="Bank Account Website"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:DropDownList ID="accountDropDownList" runat="server" Height="20px" Width="219px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="withdrawLbl" runat="server" Text="Withdraw Amount:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="withdrawTxt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style6">
                    <asp:RangeValidator ID="rangeValid" runat="server" ControlToValidate="withdrawTxt" ErrorMessage="The withdraw should be a number in the range of 1 to 100000000." ForeColor="Red" MaximumValue="100000000" MinimumValue="0" Type="Currency"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="withdrawBtn" runat="server" OnClick="purchaseBtn_Click" Text="Withdraw" Width="189px" />
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="requiredValid" runat="server" ControlToValidate="withdrawTxt" ErrorMessage="Please enter a withdraw amount" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="withdrawlLbl" runat="server">Withdrawl Message</asp:Label>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:HyperLink ID="boaLink" runat="server" NavigateUrl=" http://www.bankofamerica.com" Target="_blank">For bank details, click here.</asp:HyperLink>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
