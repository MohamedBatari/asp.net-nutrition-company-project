using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutritioncompany_webapplication
{
   

    public partial class admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=SIMO\\SQLEXPRESS; database=Goldnutrition; integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

     

        protected void Button1_Click1(object sender, EventArgs e)
        {
            con.Open();
            bool trouver = false;
            SqlCommand mc = new SqlCommand("select * from admistration", con);
            SqlDataReader red = mc.ExecuteReader();
            while (red.Read())
            {
                if (TextBox1.Text == red[1].ToString() && TextBox2.Text == red[2].ToString())
                {
                    trouver = true;
                    break;
                }
            }
            Session["user"] = TextBox1.Text;
            if (trouver == true)
            {
                Response.Redirect("reception_page.aspx?para=" + TextBox1.Text + "");
            }
            else
            {
                Response.Write("<script>alert('username or password incorrect')</script>");
            }
            con.Close();
        }
    }
}