<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Jobselection.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: auto;
            display: flex;
            justify-content: center;
            background-color:aquamarine;
        }
        .row-label {
            font-size: 4vw;
            font-size: 4vh;/* Responsive font size based on viewport width */
            height: 50px;
            align-items: center;
        }
        .auto-style2 {
            width: 100%;
           
        }
        .auto-style3 {
            width: 189px;
           
        }
        .auto-style4 {
            width: 227px;
           
        }
        .row-label2{
            display: block;
            padding: 6px;
            margin: 1px;
            background-color:aquamarine;
            font-size: 3vw;
            font-size: 3vh;
        }
        .container{
            margin-left:auto;
            margin-right:auto;
        }
        .auto-style7 {
            width: 484px;
        }
        .auto-style9 {
            width: 570px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="margin: 0; padding: 0;">
        <div class="container">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" CssClass="row-label" Text="Online Campus Selection System" Font-Bold="True"></asp:Label>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" CssClass="row-label2" runat="server" Text="Home"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label3" CssClass="row-label2" runat="server" Text="New Company"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" CssClass="row-label2" runat="server" Text="New Student"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" CssClass="row-label2" runat="server" Text="College Info"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label6" CssClass="row-label2" runat="server" Text="About Us"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label7" CssClass="row-label2" runat="server" Text="Contact Us"></asp:Label>
                </td>
            </tr>
        </table>
            </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label9" runat="server" Text="Job Seeker Login Area"></asp:Label>
                </td>
                <td class="auto-style9" rowspan="2">
                    <asp:Label ID="Label10" runat="server" Text="ADVANCE SEARCH ZONE"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Recruiter Login Area"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

