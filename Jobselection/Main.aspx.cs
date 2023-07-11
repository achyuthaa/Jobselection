using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Jobselection
{
  
    public partial class Main : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader rdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = "Achyuth";
            Label39.Visible = false;
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

     

        protected void Button1_Click(object sender, EventArgs e)
        { 
            bool work = false;
            int i = 0;
            if(string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text))
            {
                Label39.Visible = true;
                
            }
            else
            {
                Label39.Visible = false;
                work = true;
                
            }
            if (work == true)
            {
                string connection = "Data Source=DESKTOP-L0EEEQT; Initial catalog=JobSelection; Integrated Security=true;";
                con = new SqlConnection(connection);
                con.Open();
                cmd = new SqlCommand("select UserName,Password from StudentLogin", con);
                rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    if (rdr.GetString(0) == TextBox1.Text && rdr.GetString(1) == TextBox2.Text)
                    {
                        Response.Write("Login Successfull");
                        i = 1;
                        break;
                    }
                }
                Label39.Visible = true;
                if(i == 0)
                {
                    Label39.Text = "Student not found";
                }
                else
                {
                    Label39.Text = "Student Found";
                }

            }
        }
    }
}