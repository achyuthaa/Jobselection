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
            align-items:center;
            justify-content:center;
            text-align:center;
        }
        .container{
            margin-left:auto;
            margin-right:auto;
        }
        .auto-style8 {
            width: 444px;
        }
        .auto-style9 {
            width: 349px;
        }
        .auto-style10 {
            width: 161px;
        }
        .auto-style11 {
            width: 196px;
        }
        .auto-style12 {
            width: 152px;
        }
        .auto-style13 {
            width: 49px;
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
                <td class="auto-style9">
                    <asp:Label ID="Label9" CssClass="row-label2" runat="server" Text="Job Seeker Login Area" Width="344px"></asp:Label>
                </td>
                <td class="auto-style8" rowspan="2">
                    <asp:Label ID="Label10" CssClass="row-label2" runat="server" Text="ADVANCE SEARCH ZONE" Height="56px" Width="641px"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label11" CssClass="row-label2" runat="server" Text="Recruiter Login Area"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
        <table class="auto-style2">
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label12" runat="server" Text="UserName"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:Label ID="Label17" runat="server" Text="Category      :"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:ListBox ID="ListBox1" runat="server" Height="33px" Width="117px"></asp:ListBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label13" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:Label ID="Label18" runat="server" Text="Qualification :"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:ListBox ID="ListBox2" runat="server" Height="33px" Width="117px"></asp:ListBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Button ID="Button1" runat="server" Text="Login" Width="114px" />
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label14" runat="server" Text="Enter Username &amp; Password"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Label ID="Label15" runat="server" Text="New Student?"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Label ID="Label16" runat="server" Text="Forgot Password?"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

