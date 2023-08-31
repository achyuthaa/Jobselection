<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLoggedIn.aspx.cs" Inherits="Jobselection.StudentLoggedIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .cent{
            text-align:center;
        }
        .auto-style1 {
            width: 100%;
            height: auto;
            display: flex;
            justify-content: center;
            background-color:lightpink;
            border-radius: 5px;
        }
        .row-label {
            font-size: 4vw;
            font-size: 4vh;/* Responsive font size based on viewport width */
            height: 50px;
            align-items: center;
            color:crimson;
            font-family:Georgia, 'Times New Roman', Times, serif;
            display:flex;
            justify-content: center;
           
            
            
        }
        .row-label2{
            display:block;
            padding: 4px;
            margin: 0px;
            background-color:lightpink;
            font-size: 3vw;
            font-size: 3vh;
            align-items:center;
            justify-content:center;
            text-align:center;
            border-radius: 5px;
            color:darkslategrey;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }
        .row-label3{
            color:darkslategrey;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
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
        .container{
            margin-left:auto;
            margin-right:auto;
        }
        .auto-style8 {
            width: 393px;
        }
        .auto-style9 {
            width: 349px;
        }
        .auto-style10 {
            width: 100%;
            height: 116px;
        }
        .auto-style12 {
            width: 188px;
        }
        .auto-style13 {
            width: 214px;
        }
        .auto-style14 {
            width: 146px;
        }
        .auto-style15 {
            width: 178px;
        }
        .auto-style16 {
            width: 595px;
        }
        .auto-style17 {
            width: 63px;
        }
        .auto-style18 {
            width: 144px;
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
                    <asp:Label ID="Label9" CssClass="row-label2" runat="server" Text="Job Seeker Login Area" Width="344px" style="height: 56px"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Label10" CssClass="row-label2" runat="server" Text="ADVANCE SEARCH ZONE" Height="56px" Width="484px"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label11" CssClass="row-label2" runat="server" Text="Recruiter Login Area" style="height: 56px"></asp:Label>
                </td>
            </tr>
            </table>
        <table class="auto-style10">
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label12" CssClass="row-label2" runat="server" Text="Student Name" Width="152px"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox1" runat="server" Width="116px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:Label ID="Label13" CssClass="row-label2" runat="server" Text="Recruiter Name" Width="155px"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server" Width="116px"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:Label ID="Label14" CssClass="row-label2" runat="server" Text="Company Name" Width="167px"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CompanyName" Width="145px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobSelectionConnectionString %>" SelectCommand="SELECT [CompanyName] FROM [RecruiterLogin]"></asp:SqlDataSource>
                </td>
                <td class="auto-style15">
                    <asp:Button ID="Button2" runat="server" Text="Go" Width="114px"  OnClick="Button2_Click"/>
                </td>
            </tr>
        </table>
        <table class="auto-style2">
            <tr>
                <td class="auto-style16" style="text-align:center">
                    <asp:Label ID="Label15" CssClass="row-label2" runat="server" Text="Resume Link" Width="203px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="366px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style2">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <table class="auto-style2">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <asp:Button ID="Button1" runat="server" Text="Apply" Width="114px"  OnClick="Button1_Click"/>
                </td>
            </tr>
        </table>
        </form>
    </body>

    </html>

        