<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateRecruiter.aspx.cs" Inherits="Jobselection.CreateRecruiter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
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
            text-decoration:none;
        }
        .row-label3{
            color:darkslategrey;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            text-align:center;
        }
        .auto-style2 {
            width: 746px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                    <asp:Label ID="Label3" CssClass="row-label2" runat="server" Text="Recruiter Id"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox ID="TextBox1"  runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                    <asp:Label ID="Label4" CssClass="row-label2" runat="server" Text="Recruiter Name"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox ID="TextBox2"  runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                    <asp:Label ID="Label5" CssClass="row-label2" runat="server" Text="Recruiter UserName"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox ID="TextBox3"  runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                    <asp:Label ID="Label6" CssClass="row-label2" runat="server" Text="Company Name"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox ID="TextBox4"  runat="server" ></asp:TextBox>
                    </td>
                </tr>
              
                        <tr>
                            <td class="auto-style2">
                    <asp:Label ID="Label7" CssClass="row-label2" runat="server" Text="Password"></asp:Label>
                            </td>
                            <td>
                    <asp:TextBox ID="TextBox5"  runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                 
            </table>
        </div>
        <table class="auto-style1">
           
            <tr>
                <td style="text-align:center">
                    <asp:Button ID="Button1" CssClass="row-label3" runat="server" Text="Save" Width="114px"  OnClick="Button1_Click"/>
                </td>
            </tr>
        </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label8" CssClass="row-label2" runat="server" Text="Company Exists"></asp:Label>
                            </td>
            </tr>
        </table>
    </form>
</body>
</html>
