using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutritioncompany_webapplication
{
    public partial class reception_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Hello " + Request.QueryString["para"] + " we wish you all the best");
            if (Session["user"] == null)
            {
                Response.Redirect("Admin.aspx");
            }
        }

        protected void header_Click(object sender, EventArgs e)
        {
            Response.Redirect("product_management.aspx");
        }

        protected void menu_Click(object sender, EventArgs e)
        {
            Response.Redirect("stockmanagement.aspx");
        }

        protected void main_Click(object sender, EventArgs e)
        {
            Response.Redirect("transfertmanagement.aspx");

        }
    }
}