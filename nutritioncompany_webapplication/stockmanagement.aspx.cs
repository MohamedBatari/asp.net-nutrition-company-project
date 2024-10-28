using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutritioncompany_webapplication
{
    public partial class stockmanagement : System.Web.UI.Page
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
            Response.Redirect("stocklist.aspx");
        }

        protected void menu_Click(object sender, EventArgs e)
        {
            Response.Redirect("addstock.aspx");
        }

        protected void main_Click(object sender, EventArgs e)
        {
            Response.Redirect("updatestock.aspx");
        }

        protected void foot_Click(object sender, EventArgs e)
        {
            Response.Redirect("deletestock.aspx");
        }
    }
}