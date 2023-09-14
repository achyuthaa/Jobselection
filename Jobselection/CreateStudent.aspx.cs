﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Reflection.Emit;
using System.Security.Principal;

namespace Jobselection
{
    public partial class CreateStudent : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader rdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label7.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = TextBox1.Text;
            string b = TextBox2.Text;
            string c = TextBox3.Text;
            string d = TextBox4.Text;
            if (a == "" || b == "" || c == "" || d == "")
            {
                Label7.Visible = true;
                Label7.Text = "Please Enter all the columns";
            }
            else
            {
                String Connection = "Data Source=tcp:jobselectiondbserver.database.windows.net,1433;Initial Catalog=Jobselection_db;User Id=achyuth@jobselectiondbserver;Password=Anwesh@123";
                int i = 0;
                conn = new SqlConnection(Connection);
                conn.Open();
                cmd = new SqlCommand("select StudentId,Name from StudentLogin", conn);
                rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    if (rdr.GetString(0) != TextBox1.Text || rdr.GetString(1) != TextBox2.Text)
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
                    conn = new SqlConnection(Connection);
                    conn.Open();
                    cmd = new SqlCommand("Insert into StudentLogin values(@value1,@value2,@value3,@value4)", conn);
                    cmd.Parameters.AddWithValue("@value1", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@value2", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@value3", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@value4", TextBox4.Text);
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
                    Label7.Text = "Student Exists Contact Database Administrator";
                    Label7.Visible = true;
                }
            }
        }
    }
}