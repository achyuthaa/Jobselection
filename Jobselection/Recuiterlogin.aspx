<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recuiterlogin.aspx.cs" Inherits="Jobselection.Recuiterlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
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
        .test1{
            width: 855px;
        }
        .test2{
            width: 801px;
        }
        .auto-style2 {
            margin-top: 0px;
        }
        .auto-style3 {
            width: 100%;
        }
        .row-label3{
            color:darkslategrey;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }
        .auto-style4 {
            width: 1242px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style3">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                    <asp:Button ID="Button1" CssClass="row-label3" runat="server" Text="Logout" Width="114px"  OnClick="Button1_Click"/>
                    </td>
                </tr>
            </table>

        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1247px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style2">
            <Columns>
                <asp:BoundField DataField="StudentName" ControlStyle-CssClass="test1" HeaderText="StudentName" SortExpression="StudentName" />
                <asp:BoundField DataField="ResumeLink" ControlStyle-CssClass="test2" HeaderText="ResumeLink" SortExpression="ResumeLink" />
                <asp:BoundField DataField="RecruiterName" HeaderText="RecruiterName" SortExpression="RecruiterName" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobSelectionConnectionString3 %>" SelectCommand="SELECT [StudentName], [ResumeLink], [RecruiterName], [CompanyName] FROM [StudentSubmissionTable] WHERE ([RecruiterName] = @RecruiterName)">
            <SelectParameters>
                <asp:SessionParameter Name="RecruiterName" SessionField="RecruiterName" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
