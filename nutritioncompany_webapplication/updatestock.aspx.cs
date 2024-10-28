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
    public partial class updatestock : System.Web.UI.Page
    {
        ADO d = new ADO();


        public void RemplirGrid()
        {

            d.CONNECTER();
            d.dap = new SqlDataAdapter("select *from mon_stock", d.con);
            d.dap.Fill(d.ds, "transfert");
            GridView1.DataSource = d.ds.Tables["transfert"];
            GridView1.DataBind();

            d.DECONNECTER();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                RemplirGrid();
            }
            if (Session["user"] == null)
            {
                Response.Redirect("Admin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            d.CONNECTER();
            d.cmd.CommandText = " update mon_stock set Article =@b , quantité_1 =@c , date_entre =@d where Num_stock ='" + TextBox1.Text + "'";
            SqlParameter p1 = new SqlParameter("@b", TextBox2.Text);
            SqlParameter p2 = new SqlParameter("@c", int.Parse(TextBox3.Text));
            SqlParameter p3 = new SqlParameter("@d", DateTime.Parse(TextBox4.Text));
            d.cmd.Parameters.Add(p1);
            d.cmd.Parameters.Add(p2);
            d.cmd.Parameters.Add(p3);
            d.cmd.Connection = d.con;

            d.cmd.ExecuteNonQuery();
            RemplirGrid();
            d.DECONNECTER();
            Response.Write(" <script>alert('Stock update is done succefully'); </script> ");
        }

      

        protected void GridView1_SelectedIndexChanging1(object sender, GridViewSelectEventArgs e)
        {
            int r = e.NewSelectedIndex;
            TextBox1.Text = GridView1.Rows[r].Cells[1].Text;
            TextBox2.Text = GridView1.Rows[r].Cells[2].Text;
            TextBox3.Text = GridView1.Rows[r].Cells[3].Text;
            TextBox4.Text = GridView1.Rows[r].Cells[4].Text;
        }
    }
}