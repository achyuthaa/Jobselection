using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;

namespace Jobselection
{
    public partial class CreateRecruiter : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader rdr;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label8.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "")
            {
                Label8.Visible = true;
                Label8.Text = "Please fill all the columns";
            }
            else
            {
                String Connection = ConfigurationManager.ConnectionStrings["JobSelectionConnectionStringM"].ConnectionString;
                int i = 0;
                conn = new SqlConnection(Connection);
                conn.Open();
                cmd = new SqlCommand("select CompanyName from RecruiterLogin", conn);
                rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    if (rdr.GetString(0) != TextBox4.Text)
                    {
                        continue;
                    }
                    else
                    {
                        i = 1;
                        break;
                    }

                }
                conn.Close();
                if (i == 0)
                {
                    conn.Open();
                    cmd = new SqlCommand("Insert into RecruiterLogin values(@value1,@value2,@value3,@value4,@value5)", conn);
                    cmd.Parameters.AddWithValue("@value1", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@value2", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@value3", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@value4", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@value5", TextBox5.Text);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    Label8.Visible = true;
                }
            }
        }
    }
}