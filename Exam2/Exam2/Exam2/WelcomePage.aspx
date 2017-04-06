<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="Exam2.WelcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 style="text-align:center; color:blue;">Welcome to the Ticket Booking Website of US Trains!!</h1>
        <table class="auto-style1">
            <tr>
                <td>Your Name</td>
                <td>
                    <asp:TextBox ID="nameTxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="nameValid" runat="server" ErrorMessage="Name is rquired." ControlToValidate="nameTxt"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Your Phone Number</td>
                <td>
                    <asp:TextBox ID="numberTxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="numberValid" runat="server" ErrorMessage="Number is required." ControlToValidate="numberTxt"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="DetailsButton" runat="server" Text="More Details" OnClick="DetailsButton_Click" PostBackUrl="~/MainPages/DetailsPage.aspx" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
