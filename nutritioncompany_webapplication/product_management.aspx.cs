using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutritioncompany_webapplication
{
    public partial class product_management : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Admin.aspx");
            }
        }

        protected void header_Click(object sender, EventArgs e)
        {
            Response.Redirect("listofproduct.aspx");
        }

        protected void menu_Click(object sender, EventArgs e)
        {
            Response.Redirect("ADDPRODUCT.aspx");
        }

        protected void main_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateproduct.aspx");
        }

        protected void foot_Click(object sender, EventArgs e)
        {
            Response.Redirect("deleteproduct.aspx");
        }
    }
}