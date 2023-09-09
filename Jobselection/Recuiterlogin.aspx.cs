using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobselection
{
    public partial class Recuiterlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                
                if (Session["RecruiterName"] != null)
                {
                    string RecruiterName = Session["RecruiterName"].ToString();
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex);
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Default.aspx");
        }
    }
}