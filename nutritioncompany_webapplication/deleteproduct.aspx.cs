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
    public partial class deleteproduct : System.Web.UI.Page
    {
        ADO d = new ADO();
        public void RemplirGrid()
        {
            d.CONNECTER();
            d.dap = new SqlDataAdapter("select *from les_produits_vendus", d.con);
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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int a = e.RowIndex;
            int code = Convert.ToInt32(GridView1.Rows[a].Cells[1].Text);
            d.CONNECTER();
            d.cmd.CommandText = "delete from les_produits_vendus where Num_produit ='" + code + "'";
            d.cmd.Connection = d.con;
            d.cmd.ExecuteNonQuery();
            RemplirGrid();
            d.DECONNECTER();
            Response.Write(" <script>alert('product deleted succefully'); </script> ");
        }
    }
}