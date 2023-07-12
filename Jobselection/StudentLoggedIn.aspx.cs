using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Jobselection
{
    public partial class StudentLoggedIn : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader rdr;
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            string stdname = Session["name"].ToString();
            TextBox1.Text = stdname;
            TextBox1.Enabled = false;

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
                                


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string connection = "Data Source=DESKTOP-L0EEEQT; initial catalog=JobSelection; Integrated security=true;";
            conn = new SqlConnection(connection);
            conn.Open();
            cmd = new SqlCommand("SELECT RecruiterName FROM RecruiterLogin Where CompanyName = @value1", conn);
            cmd.Parameters.AddWithValue("@value1", DropDownList1.SelectedItem.Text);
            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                TextBox2.Text = rdr.GetString(0);
                TextBox2.Enabled = false;
            }
            conn.Close();

        }
    }
}