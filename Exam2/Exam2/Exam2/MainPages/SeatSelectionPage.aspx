<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeatSelectionPage.aspx.cs" Inherits="Exam2.MainPages.WebForm1" %>
<%@ PreviousPageType VirtualPath="~/MainPages/DetailsPage.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 219px;
        }
        .auto-style3 {
            width: 164px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
                    <h1 style="text-align:center; color:blue;">Select the Seat Numbers</h1>
        <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">Name of Passenger</td>
                            <td class="auto-style3">Seat Number</td>
                            <td>Discounts</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="P1NameLabel" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="seat1Txt" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="P1DiscountLabel" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="P2NameLabel" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="seat2Txt" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="P2DiscountLabel" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="P3NameLabel" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="seat3Txt" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="P3DiscountLabel" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="SeatNumberErrorLabel" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="auto-style3">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Button ID="goBtn" runat="server" Text="Go to Final Booking" OnClick="goBtn_Click" />
                            </td>
                            <td class="auto-style3">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        </table>
    
    </div>
    </form>
</body>
</html>
