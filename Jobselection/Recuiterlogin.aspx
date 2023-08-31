<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recuiterlogin.aspx.cs" Inherits="Jobselection.Recuiterlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .Labell1{
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
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <div class="auto-style2">
                        <asp:Label ID="Label1" runat="server" CssClass="Labell1" Text="StudentName"></asp:Label>
                            </div>
                    </td>
                    <td>
                        <div class="auto-style3">
                        <asp:Label ID="Label2" runat="server" CssClass="Labell1" Text="ResumeLink"></asp:Label>
                         </div>
                    </td>
                </tr>
            </table>

        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                <asp:BoundField DataField="ResumeLink" HeaderText="ResumeLink" SortExpression="ResumeLink" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobSelectionConnectionString2 %>" SelectCommand="SELECT [StudentName], [ResumeLink] FROM [StudentSubmissionTable]"></asp:SqlDataSource>
    </form>
</body>
</html>
