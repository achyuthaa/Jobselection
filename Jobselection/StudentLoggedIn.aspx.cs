using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace Jobselection
{
    public partial class StudentLoggedIn : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader rdr;
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label16.Visible = false;
            TextBox2.Enabled = false;
            
            try
            {
                
                if (Session["Name"] != null)
                {
                    string stdname = Session["Name"].ToString();
                    TextBox1.Text = stdname;
                    TextBox1.Enabled = false;
                }
                else
                {
                    Response.Redirect("Main.aspx");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
                                


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            string connection = "Data Source=tcp:jobselectiondbserver.database.windows.net,1433;Initial Catalog=Jobselection_db;User Id=achyuth@jobselectiondbserver;Password=Anwesh@123";
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Default.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String test = TextBox3.Text;
            if (IsUrl.IssUrl(test))
            {
                if (TextBox2.Text == "" || DropDownList1.Text == "")
                {
                    Label16.Visible = true;
                    Label16.Text = "First select the company name and hit 'Go'";
                }
                else
                {
                    string connection = "Data Source=tcp:jobselectiondbserver.database.windows.net,1433;Initial Catalog=Jobselection_db;User Id=achyuth@jobselectiondbserver;Password=Anwesh@123";
                    conn = new SqlConnection(connection);
                    conn.Open();
                    cmd = new SqlCommand("Insert into StudentSubmissiontable values(@value1,@value2,@value3,@value4)", conn);
                    cmd.Parameters.AddWithValue("@value1", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@value2", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@value3", DropDownList1.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@value4", TextBox3.Text);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    TextBox3.Text = "";
                    Label16.Visible = true;
                    Label16.Text = "Successfully Applied";
                }
            }
            else
            {
                Label16.Visible = true;
                
            }
        }
        protected void Redirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Default.aspx");
        }
        public class IsUrl
        {
            public static bool IssUrl(string text)
            {
                string pattern = @"^(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]$";
                Regex regex = new Regex(pattern, RegexOptions.Compiled | RegexOptions.IgnoreCase);
                return regex.IsMatch(text);
            }
        }
        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Label2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");

        }
    }
}