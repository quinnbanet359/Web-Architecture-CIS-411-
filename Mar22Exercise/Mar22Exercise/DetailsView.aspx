<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsView.aspx.cs" Inherits="Mar22Exercise.DetailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 176px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Account Name:</td>
                <td>
                    <asp:Label ID="nameLbl" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Account Type:</td>
                <td>
                    <asp:Label ID="typeLbl" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Account Balance:</td>
                <td>
                    <asp:Label ID="balanceLbl" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Eligible for Loan:</td>
                <td>
                    <asp:Label ID="loanLbl" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Address Provided:</td>
                <td>
                    <asp:Label ID="addressLbl" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
