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
    public partial class TRANSFERTLIST : System.Web.UI.Page
    {
        ADO d = new ADO();

        public void RemplirGrid()
        {
            d.CONNECTER();
            d.dap = new SqlDataAdapter("select *from transfert", d.con);
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

        
    }
}