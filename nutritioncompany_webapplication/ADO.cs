using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace EFM_Monsieur_Aoujil
{
    public class ADO
    {

        public SqlConnection con = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();
        public SqlDataReader dr;
        public SqlDataAdapter dap = new SqlDataAdapter();
        public DataSet ds = new DataSet();
        public SqlCommandBuilder bc;
        public DataView dv = new DataView();
        public DataView dv1 = new DataView();

        public void CONNECTER()
        {
            if (con.State == ConnectionState.Closed || con.State == ConnectionState.Broken)
            {
                con.ConnectionString = "server=SIMO\\SQLEXPRESS; database=Goldnutrition; integrated security=true";
                con.Open();
            }
        }

        public void DECONNECTER()
        {
            if (con.State == ConnectionState.Open)
            {

                con.Close();
            }
        }
    }
}