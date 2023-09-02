using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Jobselection
{
    public partial class CreateStudent : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader rdr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String Connection = "Data Source=DESKTOP-L0EEEQT; Initial catalog=JobSelection; Integrated Security=true;";
            conn = new SqlConnection(Connection);
            conn.Open();
            cmd = new SqlCommand("Insert into StudentLogin values(@value1,@value2,@value3,@value4)",conn);
            cmd.Parameters.AddWithValue("@value1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@value2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@value3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@value4", TextBox4.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Main.aspx");

        }
    }
}