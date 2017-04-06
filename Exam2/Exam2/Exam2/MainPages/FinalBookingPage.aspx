<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FinalBookingPage.aspx.cs" Inherits="Exam2.MainPages.FinalBookingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 358px;
        }
        .auto-style3 {
            width: 358px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 style="text-align:center; color:blue;">Final Booking Details</h1>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name of Passenger</td>
                <td>Seat #</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="pass1Lbl" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <asp:Label ID="seat1Lbl" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="pass2Lbl" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="seat2Lbl" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="pass3Lbl" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <asp:Label ID="seat3Lbl" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Total Fare:</td>
                <td>
                    <asp:Label ID="totalFareLbl" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
