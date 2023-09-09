using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Reflection.Emit;

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
            Label40.Visible = false;


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
            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text))
            {
                Response.Redirect("Default.aspx");
                Label39.Visible = true;
               

            }
            else
            {
                Label39.Visible = false;
                work = true;

            }
            if (work == true)
            {
                string connection = "Data Source = tcp:jobselectiondbserver.database.windows.net,1433; Initial Catalog = Jobselection_db; User Id = achyuth@jobselectiondbserver; Password = Anwesh@123";
                con = new SqlConnection(connection);
                con.Open();
                cmd = new SqlCommand("select UserName,Password,Name from StudentLogin", con);
                rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    if (rdr.GetString(0) == TextBox1.Text && rdr.GetString(1) == TextBox2.Text)
                    {
                        Response.Write("Login Successfull");
                        i = 1;
                        Session["Name"] = rdr.GetString(2);
                        Response.Redirect("StudentLoggedIn.aspx");
                        break;
                    }
                                      

                }
                Label39.Visible = true;
                if (i == 0)
                {
                    Label39.Text = "Student not found";
                }
                else
                {
                    Label39.Text = "Student Found";
                }
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            bool work = false;
            int i = 0;
            if (string.IsNullOrEmpty(TextBox3.Text) || string.IsNullOrEmpty(TextBox4.Text))
            {
                Response.Redirect("Default.aspx");
                Label40.Visible = true;

            }
            else
            {
                Label40.Visible = false;
                work = true;

            }
            if (work == true)
            {
                string connection = "Data Source = tcp:jobselectiondbserver.database.windows.net,1433; Initial Catalog = Jobselection_db; User Id = achyuth@jobselectiondbserver; Password = Anwesh@123";
                con = new SqlConnection(connection);
                con.Open();
                cmd = new SqlCommand("select RecruiterUsername,password,RecruiterName from RecruiterLogin", con);
                rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    if (rdr.GetString(0) == TextBox3.Text && rdr.GetString(1) == TextBox4.Text)
                    {
                        Response.Write("Login Successfull");
                        i = 1;
                        Session["RecruiterName"] = rdr.GetString(2);
                        Response.Redirect("Recuiterlogin.aspx");
                        break;
                    }
                   

                }
                Label40.Visible = true;
                if (i == 0)
                {
                    Label40.Text = "Recruiter not found";
                }
                else
                {
                    Label40.Text = "Recruiter Found";
                }
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";

            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {



        }


        protected void Redirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");

        }

        protected void Label15_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateStudent.aspx");
        }

        protected void Label23_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateRecruiter.aspx");
        }
    }
}