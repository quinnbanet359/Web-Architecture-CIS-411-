<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApartmentMaintenancePage.aspx.cs" Inherits="ApartmentClassEx.Apartment_Details.ApartmentMaintenancePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="main.css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 271px;
        }
        .auto-style3 {
            width: 271px;
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
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Apartment Type (sq feet)</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="apartmentDropDown" runat="server" Height="34px" Width="226px" AutoPostBack="True" OnSelectedIndexChanged="apartmentDropDown_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:ListBox ID="apartmentListBox" runat="server" Height="128px" Width="228px"></asp:ListBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
       
                </td>
                <td class="auto-style4">
                    <asp:Label ID="resultsLbl" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="maintBtn" runat="server" OnClick="maintBtn_Click" Text="Submit for Maintenance" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
