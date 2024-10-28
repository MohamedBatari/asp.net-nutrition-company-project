using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutritioncompany_webapplication
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

      

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("reception_page.aspx");

        }
    }
}