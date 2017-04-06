<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsPage.aspx.cs" Inherits="Exam2.MainPages.DetailsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 220px;
        }
        .auto-style3 {
            width: 341px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <h1 style="text-align:center; color:blue;">Details</h1>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">Provide Details. Maximum three passengers can be on one ticket.</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Passenger 1</td>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Name</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="nameTxt1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="P1ErrorLabel" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Age</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="ageTxt1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Phone Number</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="numberTxt1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Passenger 2</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Name</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="nameTxt2" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="P2ErrorLabel" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Age</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="ageTxt2" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Phone Number</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="numberTxt2" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Passenger 3</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Name</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="nameTxt3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="P3ErrorLabel" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Age</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="ageTxt3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Phone Number</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="numberTxt3" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="selectBtn" runat="server" Text="Select Seats" OnClick="selectBtn_Click" />
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

    </div>
    </form>
</body>
</html>
