using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutritioncompany_webapplication
{
    public partial class ADDTRANSFERT : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=SIMO\\SQLEXPRESS; database=Goldnutrition; integrated security=true");
        DataTable dt;

        //remplirGrid
        public void remplirgrid()
        {
            con.Open();
            SqlCommand cm = new SqlCommand("select*from transfert ", con);
            SqlDataReader red = cm.ExecuteReader();
            dt = new DataTable();
            dt.Load(red);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            red.Close();
            con.Close();
        }

        //remplircombo

        public void remplircom()
        {
            con.Open();
            SqlCommand cm = new SqlCommand("select Num_stock from mon_stock", con);
            SqlDataReader red = cm.ExecuteReader();
            while (red.Read())
            {
                DropDownList1.Items.Add(red[0].ToString());
            }

            DropDownList1.DataBind();
            red.Close();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                remplircom();
                remplirgrid();
            }
            if (Session["user"] == null)
            {
                Response.Redirect("Admin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            int solde;
            int montant;
            int totale = 0;
            SqlCommand cm = new SqlCommand("insert into transfert values ('" + TextBox2.Text + "','" + TextBox3.Text + "','" + DateTime.Now + "','" + DropDownList1.Text + "')", con);
            cm.ExecuteNonQuery();
            SqlCommand cm1 = new SqlCommand("select quantité_1 from mon_stock where Num_stock = '" + DropDownList1.Text + "'", con);
            solde = (int)cm1.ExecuteScalar();
            montant = int.Parse(TextBox3.Text);
            if (montant > solde)
            {
                Response.Write("<script>alert('THIS QUANTITY IS MORE THEN THE STOCK')</script>");
                return;
            }
            else
            {
                totale = (solde - montant);
            }


            SqlCommand cm2 = new SqlCommand("update mon_stock set quantité_1 = '" + totale + "' where Num_stock = '" + DropDownList1.Text + "'", con);
            cm2.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('THE TRANSFET IS DONE SUCCEFULLY')</script>");
            remplirgrid();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}