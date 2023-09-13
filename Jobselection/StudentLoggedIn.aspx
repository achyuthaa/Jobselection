<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLoggedIn.aspx.cs" Inherits="Jobselection.StudentLoggedIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       /* .cent{
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
            font-size: 4vh;/* Responsive font size based on viewport width 
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
            text-decoration: none;
            
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
            text-decoration:none;
           
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
        .auto-style19 {
            width: 1141px;
        }*/
       
.auto-style2 {
   /*display: flex;*/
    /*justify-content: space-around;  Adjust this as needed for spacing */
    flex-wrap: wrap;
    width:100%;
}
.row-label2 {
    display: flex;
    padding: 2px;
    margin: 0px;
    background-color: lightpink;
    font-size: 1.5vw;
    font-size: 1.5vh;
    align-items: center;
    justify-content: center;
    text-align: center;
    border-radius: 5px;
    color: darkslategrey;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    text-decoration: none;

}
.row-label201 {
    display: flex;
    padding: 2px;
    margin: 0px;
    font-size: 1.5vw;
    font-size: 1.5vh;
    align-items: center;
    justify-content: center;
    text-align: center;
    border-radius: 5px;
    color: darkslategrey;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    text-decoration: none;

}
.row-label{
        font-size: 3vw;
        font-size: 3vh; /* Responsive font size based on viewport width */
        height: 55px;
        align-items: center;
        text-align: center;
        justify-content: center;
        color: crimson;
        width: 100%;
        font-family: Georgia, 'Times New Roman', Times, serif;
        display: flex;
        justify-content: center;
    }
.auto-style1 {
    width:100%;
    height: 100%;
    display: flex;
    justify-content: center;
    border-radius: 5px;
}
.auto-style21 {
            width: 16.6%;
        }
.auto-style211{
    width:14.28%;
}

@media (max-width: 470px) {
      .row-label {
        font-size: 1.5vw;
        font-size: 1.5vh; /* Responsive font size based on viewport width */
        height: 55px;
        align-items: center;
        text-align: center;
        justify-content: center;
        color: crimson;
        width: 100%;
        font-family: Georgia, 'Times New Roman', Times, serif;
        display: flex;
        justify-content: center;
    }
       .row-label2 {
        display: flex;
        padding: 2px;
        margin: 0px;
        background-color: lightpink;
        font-size: 1vw;
        font-size: 1vh;
        align-items: center;
        justify-content: center;
        text-align: center;
        border-radius: 5px;
        color: darkslategrey;
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        text-decoration: none;
    }
       .row-label201 {
        display: flex;
        padding: 2px;
        margin: 0px;
        background-color: lightpink;
        font-size: 1vw;
        font-size: 1vh;
        align-items: center;
        justify-content: center;
        text-align: center;
        border-radius: 5px;
        color: darkslategrey;
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        text-decoration: none;
    }
           

    </style>
</head>
<body>
     <form id="form1" runat="server" style="margin: 0; padding: 0;">
        <div class="whole">
        <div class="container">
            <div class ="ooo">
            <table class="auto-style2">
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
            </div>        
             <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" CssClass="row-label" Text="Online Campus Selection System" Font-Bold="True"></asp:Label>
             </div>
                    
             <table class="auto-style2">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
        <table class="auto-style2">
            <tr>
                <td class="auto-style21">
                    <asp:LinkButton ID="Label2" CssClass="row-label2" runat="server" Text="Home" OnClick="Label2_Click1" />
                </td>
                <td class="auto-style21">
                    <asp:Label ID="Label3" CssClass="row-label2" runat="server" Text="New Company"></asp:Label>
                </td>
                <td  class="auto-style21">
                    <asp:Label ID="Label4" CssClass="row-label2" runat="server" Text="New Student"></asp:Label>
                </td>
                <td  class="auto-style21">
                    <asp:Label ID="Label5" CssClass="row-label2" runat="server" Text="College Info"></asp:Label>
                </td>
                <td  class="auto-style21">
                    <asp:Label ID="Label6" CssClass="row-label2" runat="server" Text="About Us"></asp:Label>
                </td>
                <td  class="auto-style21">
                    <asp:Label ID="Label7" CssClass="row-label2" runat="server" Text="Contact Us"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td  class="auto-style3">
                    &nbsp;</td>
                <td  class="auto-style3">
                    &nbsp;</td>
                <td  class="auto-style3">
                    &nbsp;</td>
                <td  class="auto-style3">
                    &nbsp;</td>
            </tr>
        </table>
       
        <table class="auto-style2">
            <tr>
                <td class="auto-style211">
                    <asp:Label ID="Label12" CssClass="row-label2" runat="server" Text="Student Name" ></asp:Label>
                </td>
                <td class="auto-style211">
                    <asp:TextBox ID="TextBox1"  runat="server"></asp:TextBox>
                </td>
                <td class="auto-style211">
                    <asp:Label ID="Label13" CssClass="row-label2" runat="server" Text="Recruiter Name" ></asp:Label>
                </td>
                <td class="auto-style211">
                    <asp:TextBox ID="TextBox2" runat="server"  OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style211">
                    <asp:Label ID="Label14" CssClass="row-label2" runat="server" Text="Company Name"></asp:Label>
                </td>
                <td class="auto-style211">
                    <div class="row">
                    <asp:DropDownList ID="DropDownList1"  runat="server" DataSourceID="SqlDataSource2" DataTextField="CompanyName" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataValueField="CompanyName">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Jobselection_dbConnectionString %>" SelectCommand="SELECT [CompanyName] FROM [RecruiterLogin]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1"  runat="server" ConnectionString="<%$ ConnectionStrings:JobSelectionConnectionString %>" SelectCommand="SELECT [CompanyName] FROM [RecruiterLogin]"></asp:SqlDataSource>
                        </div>
                </td>
                <td class="auto-style211">
                    <asp:Button ID="Button2" runat="server"  Text="Go"   OnClick="Button2_Click" Width="106px"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
            </tr>
        </table>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3" style="text-align:center">
                    <asp:Label ID="Label15" CssClass="row-label2"  runat="server" Text="Portfolio Link"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server"  OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
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
                <td class="auto-style19">
                    <asp:Label ID="Label16" runat="server" Text="Enter Correct Portfolio Link"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:center" class="auto-style19">
                    <asp:Button ID="Button1" runat="server" Text="Apply" Width="114px"  OnClick="Button1_Click"/>
                </td>
                <td style="text-align:center">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="width: 90px" Text="Logout" />
                </td>
            </tr>
        </table>
        </form>
    </body>

    </html>

        