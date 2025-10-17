using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JewellryShop
{
    public partial class ProductView : System.Web.UI.Page
    {
        string s = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\JewelryShop.mdf;Integrated Security=True;";

        SqlConnection con;
        SqlCommand cmd;

        public void GetCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        string PId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            PId = Request.QueryString["Id"].ToString();
            if (string.IsNullOrEmpty(PId))
            {
                Response.Redirect("Shop.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    BindProductDetails();
                }
            }

        }

        private void BindProductDetails()
        {
            try
            {
                GetCon();
                string query = "SELECT Id, PName, SKU, Category, PDescription, Rating, Price, Image, Badge FROM Products WHERE Id='" + PId + "'";
                cmd = new SqlCommand(query, con);


                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lblProductName.Text = dr["PName"].ToString();
                    lblSKU.Text = dr["SKU"].ToString();
                    lblShortDescription.Text = dr["PDescription"].ToString();
                    lblRating.Text = dr["Rating"].ToString();
                    lblPrice.Text = "₹ " + dr["Price"].ToString();
                    litFullDescription.Text = dr["PDescription"].ToString();

                    if (dr["Image"] != DBNull.Value)
                    {
                        imgProductThumbnail.ImageUrl = "~/Images/" + dr["Image"].ToString();
                    }

                    lblStockStatus.Text = "In Stock";
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            finally
            {
                if (con != null && con.State == System.Data.ConnectionState.Open)
                    con.Close();
            }
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            if (Session["userId"] == null || string.IsNullOrEmpty(Session["userId"].ToString()))
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                try
                {
                    GetCon();
                    string query = "INSERT INTO Cart (userId, productId, qty) VALUES ('" + Session["userId"].ToString() +"', '"+PId+"', '"+txtQty.Text+"')";
                    cmd = new SqlCommand(query, con);
             

                    int result = cmd.ExecuteNonQuery();
                    if (result > 0)
                    {
                        Response.Write("<script>alert('Product added to cart successfully.');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Failed to add product to cart.');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
               
            }
        }

    }
}