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
            width: 352px;
        }
        .auto-style3 {
            width: 352px;
            height: 37px;
        }
        .auto-style4 {
            height: 37px;
        }
        .auto-style5 {
            width: 352px;
            height: 40px;
        }
        .auto-style6 {
            height: 40px;
        }
        .auto-style7 {
            width: 83px;
        }
        .auto-style8 {
            height: 37px;
            width: 83px;
        }
        .auto-style9 {
            height: 40px;
            width: 83px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="titleLbl" runat="server" Text="Book Purchase Website"></asp:Label>
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
                    <asp:DropDownList ID="bookDropDownList" runat="server" Height="20px" Width="219px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="quantityLbl" runat="server" Text="Quantity:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="quantityTxt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style6">
                    <asp:RangeValidator ID="quantityValidator" runat="server" ControlToValidate="quantityTxt" ErrorMessage="The quantity should be a number in the range of 1 to 10." ForeColor="Red" MaximumValue="10" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="purchaseBtn" runat="server" OnClick="purchaseBtn_Click" Text="Purchase" Width="189px" />
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="quantityRequiredValidator" runat="server" ControlToValidate="quantityTxt" ErrorMessage="Quantity is required, as a number in the range 1 to 10." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="resultsLbl" runat="server"></asp:Label>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
