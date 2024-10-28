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
    public partial class UPSATETRANSFERT : System.Web.UI.Page
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

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
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

            SqlCommand cm = new SqlCommand("delete from transfert where Num_transfert  ='" + TextBox1.Text + "'", con);
            cm.ExecuteNonQuery();

            SqlCommand cm1 = new SqlCommand("select quantité_1 from mon_stock where Num_stock = '" + TextBox4.Text + "'", con);
            solde = (int)cm1.ExecuteScalar();
            montant = int.Parse(TextBox2.Text);

            totale = (solde + montant);

            SqlCommand cm2 = new SqlCommand("update mon_stock set quantité_1 = '" + totale + "' where Num_stock = '" + TextBox4.Text + "'", con);
            cm2.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('DELETE IS DONE SUCCEFULLY')</script>");
            remplirgrid();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int a = e.NewSelectedIndex;
            TextBox1.Text = GridView1.Rows[a].Cells[1].Text;
            TextBox2.Text = GridView1.Rows[a].Cells[3].Text;
            TextBox3.Text = GridView1.Rows[a].Cells[2].Text;
            TextBox4.Text = GridView1.Rows[a].Cells[5].Text;
        }
    }
}