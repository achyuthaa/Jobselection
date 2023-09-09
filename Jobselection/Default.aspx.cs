using System;

namespace YourNamespace
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Determine screen size or device type
                bool isMobileDevice = Request.Browser.IsMobileDevice;

                if (isMobileDevice)
                {
                    // Load the mobile version of the page
                    Response.Redirect("Mai.aspx");
                }
                else
                {
                    // Load the desktop version of the page
                    Response.Redirect("Main.aspx");
                }
            }
        }
    }
}
