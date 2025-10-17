using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JewellryShop
{
	public partial class Shop : System.Web.UI.Page
	{
        string s = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\JewelryShop.mdf;Integrated Security=True;";

        SqlConnection con;
        SqlCommand cmd;

        public void GetCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                BindProductGrid();
            }

        }

        private void BindProductGrid()
        {
            GetCon();
            string query = "SELECT Id, PName, SKU, Category,PDescription,rating, Price, Image, Badge FROM Products";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            rptProducts.DataSource = dt;
            rptProducts.DataBind();
          
        }

        protected void rptProducts_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}