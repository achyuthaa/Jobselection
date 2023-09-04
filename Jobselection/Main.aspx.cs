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

            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text))
            {
                Label39.Visible = true;
            }
            else
            {
                Label39.Visible = false;
                work = true;
            }

            if (work)
            {
                try
                {
                    string connection = "Data Source=tcp:jobselectiondbserver.database.windows.net,1433;Initial Catalog=Jobselection_db;User Id=achyuth@jobselectiondbserver;Password=Anwesh@123";
                    using (SqlConnection con = new SqlConnection(connection))
                    {
                        con.Open();
                        using (SqlCommand cmd = new SqlCommand("SELECT UserName, Password, Name FROM StudentLogin", con))
                        using (SqlDataReader rdr = cmd.ExecuteReader())
                        {
                            while (rdr.Read())
                            {
                                if (rdr.GetString(0) == TextBox1.Text && rdr.GetString(1) == TextBox2.Text)
                                {
                                    Response.Write("Login Successful");
                                    i = 1;
                                    Session["Name"] = rdr.GetString(2);
                                    Response.Redirect("StudentLoggedIn.aspx");
                                    break;
                                }
                            }
                        }
                    }

                    // Check if no matching student was found
                    if (i == 0)
                    {
                        Label39.Visible = true;
                        Label39.Text = "Student not found";
                    }
                    else
                    {
                        Label39.Visible = true;
                        Label39.Text = "Student Found";
                    }
                }
                catch (Exception ex)
                {
                    // Handle the exception (e.g., log it or display an error message)
                    Label39.Visible = true;
                    Label39.Text = "An error occurred: " + ex.Message;
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            bool work = false;
            int i = 0;
            if (string.IsNullOrEmpty(TextBox3.Text) || string.IsNullOrEmpty(TextBox4.Text))
            {
                Label40.Visible = true;

            }
            else
            {
                Label40.Visible = false;
                work = true;

            }
            if (work == true)
            {
                string connection = "Data Source=tcp:jobselectiondbserver.database.windows.net,1433;Initial Catalog=Jobselection_db;User Id=achyuth@jobselectiondbserver;Password=Anwesh@123";
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

            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {

            

        }
       

        protected void Redirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");

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