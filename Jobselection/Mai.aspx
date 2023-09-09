<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mai.aspx.cs" Inherits="Jobselection.Mai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width", initial-scale=1" />
    <link href="Sty.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style5 {
            width: 10px;
        }
        .row-label3{
            color:darkslategrey;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }
        </style>
</head>
<body>
        <form id="form1" runat="server" style="margin: 0; padding: 0;">
        <div class="whole">
        <div class="container">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" CssClass="row-label" Text="Online Campus Selection System" Font-Bold="True"></asp:Label>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <asp:LinkButton ID="Label2" CssClass="row-label2" runat="server" Text="Home" />
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Label3" CssClass="row-label2" runat="server" Text="New Company"></asp:Label>
                </td>
                <td  class="auto-style3">
                    <asp:Label ID="Label4" CssClass="row-label2" runat="server" Text="New Student"></asp:Label>
                </td>
                <td  class="auto-style3">
                    <asp:Label ID="Label5" CssClass="row-label2" runat="server" Text="College Info"></asp:Label>
                </td>
                <td  class="auto-style3">
                    <asp:Label ID="Label6" CssClass="row-label2" runat="server" Text="About Us"></asp:Label>
                </td>
                <td  class="auto-style3">
                    <asp:Label ID="Label7" CssClass="row-label2" runat="server" Text="Contact Us"></asp:Label>
                </td>
            </tr>
        </table>
            <div class="auto-style1">
               <asp:Label ID="Label8" runat="server" CssClass="row-label" Text="Student Login Area" Font-Bold="True"></asp:Label>
            </div>
             <table class="auto-style2">
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="Label12" CssClass="row-label2" runat="server" Text="UserName"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox1"  runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <td class="auto-style19">
                    <asp:Label ID="Label13" CssClass="row-label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
                    </tr>
                <tr>
                    <td>

                    <asp:Label ID="Label39" CssClass="row-label3" runat="server" Text="Enter Username &amp; Password" ForeColor="Red"></asp:Label>

                    </td>
                <td style="text-align:center;" class="auto-style4">
                    <asp:Button ID="Button1" CssClass="row-label2" runat="server" Text="Login" Width="114px" style="text-align:center;" OnClick="Button1_Click"/>
                </td>
                 <tr>   
                     <td>

                     </td>
                <td class="auto-style4"> 
                    <asp:LinkButton ID="Label15" CssClass="row-label2" runat="server" Text="New Student?" Width="114px" OnClick="Label15_Click"/>
                </td>
                     </tr>
                    </table>
            <div class="auto-style1">
               <asp:Label ID="Label11" runat="server" CssClass="row-label" Text="Recruiter Login Area" Font-Bold="True"></asp:Label>
            </div>
            <table class="auto-style2">
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="Label9" CssClass="row-label2" runat="server" Text="UserName"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox3"  runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                </td>
                <tr>
                <td class="auto-style19">
                    <asp:Label ID="Label10" CssClass="row-label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox4" TextMode="Password" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                </td>
                    </tr>
                <tr>
                    <td>

                    <asp:Label ID="Label40" CssClass="row-label3" runat="server" Text="Enter Username &amp; Password" ForeColor="Red"></asp:Label>


                    </td>
                <td style="text-align:center;" class="auto-style4">
                    <asp:Button ID="Button2" CssClass="row-label2" runat="server" Text="Login" Width="114px" style="text-align:center;" OnClick="Button2_Click"/>
                </td>
                 <tr>   
                     <td>

                     </td>
                <td class="auto-style4"> 
                    <asp:LinkButton ID="Label16" CssClass="row-label2" runat="server" Text="New Recruiter?" Width="114px" OnClick="Label16_Click"/>
                </td>
                     </tr>
                    
                    </table>
                    
                    <img alt="" class="auto-style6" src="fonts/p.jpg" />
                <table>
                    <tr class="auto-style32">
                        
                    <asp:Label ID="Label26"  CssClass="row-label2" runat="server" Text="Latest 5 companies"></asp:Label>
                            
                </tr>
                     <tr class="auto-style32">
                    <a href="https://www.larsentoubro.com/">
                    <asp:Label ID="Label34"  CssClass="row-label-d" runat="server" Text="L&amp;T Construction "></asp:Label>
                        </a>
                </tr>
            </tr>
            <tr>
                
                
                    <a href="https://www.wipro.com/">
                    <asp:Label ID="Label35"  CssClass="row-label-d" runat="server" Text="Wipro Technologies"></asp:Label>
                        </a>
               
            </tr>
            <tr>
               
                
                    <a href="https://www.infosys.com/">
                    <asp:Label ID="Label36"  CssClass="row-label-d" runat="server" Text="Infosys"></asp:Label>
                        </a>
               
            </tr>
            <tr>
               
                    <a href="https://www.amazon.jobs/en/job_categories/operations-it-support-engineering">
                    <asp:Label ID="Label37"  CssClass="row-label-d" runat="server" Text="Amazon"></asp:Label>
                        </a>
                
            </tr>
            <tr>
                
               
                    <a href="https://about.google/">
                    <asp:Label ID="Label38"  CssClass="row-label-d" runat="server" Text="Google"></asp:Label>
                    </a>
              
            </tr>
                     <tr>
                
                    <asp:Label ID="Label41" CssClass="auto-style11" runat="server" Text="Designed and Developed by Achyuthanwesh Vanga(α)" ></asp:Label>
                
            </tr>
          
                </table>
                     
            </div>
        </div>
    </form>
</body>
</html>
