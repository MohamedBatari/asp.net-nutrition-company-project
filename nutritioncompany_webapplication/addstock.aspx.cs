using EFM_Monsieur_Aoujil;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutritioncompany_webapplication
{
    public partial class addstock : System.Web.UI.Page
    {
        ADO d = new ADO();

       
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["user"] == null)
            {
                Response.Redirect("Admin.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            d.CONNECTER();
            d.cmd.CommandText = " insert into mon_stock values ('" + TextBox2.Text + "','" + TextBox3.Text + "','" + DateTime.Now + "')";
            d.cmd.Connection = d.con;
            d.cmd.ExecuteNonQuery();
            d.DECONNECTER();
            Response.Write(" <script>alert('Stock  added succesfully'); </script> ");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        
    }
}