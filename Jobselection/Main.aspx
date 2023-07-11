<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Jobselection.Main" %>

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
            background-color:aquamarine;
            border-radius: 5px;
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
            display:block;
            padding: 4px;
            margin: 0px;
            background-color:aquamarine;
            font-size: 3vw;
            font-size: 3vh;
            align-items:center;
            justify-content:center;
            text-align:center;
            border-radius: 5px;
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
        .auto-style19 {
            width: 13%;
        }
        .auto-style20 {
            width: 16%;
        }
        .auto-style21 {
            width: 12%;
        }
        .auto-style22 {
            width: 9%;
        }
        .auto-style23 {
            width: 7%;
        }
        .auto-style24 {
            width: 15%;
        }
        .auto-style26 {
            width: 101px;
        }
        .auto-style27 {
            width: 277px;
        }
        .auto-style30 {
            width: 509px;
            height: 327px;
            margin-left: 19px;
        }
        .auto-style31 {
            width: 747px;
        }
        .auto-style32 {
            width: 374px;
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
        <table class="auto-style2">
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="Label12" runat="server" Text="UserName"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:Label ID="Label17" runat="server" Text="Category      :"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:ListBox ID="ListBox1" runat="server" Height="33px" Width="117px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
                </td>
                <td class="auto-style23">
                    <asp:Label ID="Label19" runat="server" Text="Skill"></asp:Label>
                </td>
                <td class="auto-style24">
                    <asp:ListBox ID="ListBox3" runat="server" Height="33px" Width="117px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
                </td>
                <td colspan="2" class="cent">
                    <asp:Label ID="Label20" runat="server" Text="Recruiter Login Area"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="Label13" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:Label ID="Label18" runat="server" Text="Qualification :"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:ListBox ID="ListBox2" runat="server" Height="33px" Width="117px"></asp:ListBox>
                </td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style26">
                    <asp:Label ID="Label21" runat="server" Text="UserName"></asp:Label>
                </td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Button ID="Button1" runat="server" Text="Login" Width="114px"  OnClick="Button1_Click"/>
                </td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style24">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="my" Text="Search Company" />
                </td>
                <td class="auto-style26">
                    <asp:Label ID="Label22" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="cent">
                    <asp:Label ID="Label39" runat="server" Text="Enter Username &amp; Password" ForeColor="Red"></asp:Label>


                </td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style24">
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="my" Text="Search Students" />
                </td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="Label15" runat="server" Text="New Student?"></asp:Label>
                </td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style24">
                    <asp:Label ID="Label23" runat="server" Text="New Company?"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="Label16" runat="server" Text="Forgot Password?"></asp:Label>
                </td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style24" style="text-align: center;">
                    <asp:Button ID="Button2" runat="server" Text="Search" />
                </td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style24">
                    <asp:Label ID="Label24" runat="server" Text="Forgot Password?"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style2">
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label25"  CssClass="row-label2" runat="server" Text="Find Job by Category"></asp:Label>
                </td>
                <td class="auto-style31" rowspan="9" style="text-align:center;">
                    <img alt="" class="auto-style30" src="fonts\pexels-edmond-dantès-4344860.jpg" /></td>
                <td class="auto-style32">
                    <asp:Label ID="Label26"  CssClass="row-label2" runat="server" Text="Latest 5 companies"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label27"  CssClass="row-label2" runat="server" Text="Computer"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:Label ID="Label34"  CssClass="row-label2" runat="server" Text="L&amp;T Construction "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label28"  CssClass="row-label2" runat="server" Text="IT"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:Label ID="Label35"  CssClass="row-label2" runat="server" Text="Wipro Technologies"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label29"  CssClass="row-label2" runat="server" Text="Mechanical"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:Label ID="Label36"  CssClass="row-label2" runat="server" Text="Infosys"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label30"  CssClass="row-label2" runat="server" Text="ECE"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:Label ID="Label37"  CssClass="row-label2" runat="server" Text="Amazon"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label31"  CssClass="row-label2" runat="server" Text="Auto"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:Label ID="Label38"  CssClass="row-label2" runat="server" Text="Google"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label32"  CssClass="row-label2" runat="server" Text="Civil"></asp:Label>
                </td>
                <td class="auto-style32">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label33"  CssClass="row-label2" runat="server" Text="Electrical"></asp:Label>
                </td>
                <td class="auto-style32">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

