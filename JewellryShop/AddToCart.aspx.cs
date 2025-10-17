using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JewellryShop
{
    public partial class AddToCart : System.Web.UI.Page
    {
        string s = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\JewelryShop.mdf;Integrated Security=True;";

        SqlConnection con;

        public void GetCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCart();
            }
        }

        public void BindCart()
        {
            // Check if user is logged in
            if (Session["userId"] == null || string.IsNullOrEmpty(Session["userId"].ToString()))
            {
                Response.Redirect("Login.aspx");
                return;
            }

            try
            {
                GetCon();
                string query = "SELECT p.Image, p.PName, p.Price, c.qty, c.ProductId FROM Products p " +
                               "JOIN Cart c ON p.Id = c.ProductId " +
                               "WHERE c.userId = '" + Session["userId"].ToString() + "'";

                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                rptCartProduct.DataSource = dt;
                rptCartProduct.DataBind();

                CalculateTotals(dt); 
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            finally
            {
                if (con != null && con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        // Update Cart button click
        protected void btnUpdateCart_Click(object sender, EventArgs e)
        {
            if (Session["userId"] == null || string.IsNullOrEmpty(Session["userId"].ToString()))
            {
                Response.Redirect("Login.aspx");
                return;
            }

            try
            {
                GetCon();

                foreach (RepeaterItem item in rptCartProduct.Items)
                {
                    TextBox txtQty = (TextBox)item.FindControl("txtQty");
                    HiddenField hfProductId = new HiddenField();
                    hfProductId = (HiddenField)item.FindControl("hfProductId");

                    int qty = Convert.ToInt32(txtQty.Text);
                    int productId = Convert.ToInt32(hfProductId.Value);

                    string updateQuery = "UPDATE Cart SET qty=@qty WHERE ProductId=@productId AND UserId=@userId";
                    SqlCommand cmd = new SqlCommand(updateQuery, con);
                    cmd.Parameters.AddWithValue("@qty", qty);
                    cmd.Parameters.AddWithValue("@productId", productId);
                    cmd.Parameters.AddWithValue("@userId", Session["userId"].ToString());

                    cmd.ExecuteNonQuery();
                }

                BindCart();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            finally
            {
                if (con != null && con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        // Calculate subtotal and total
        private void CalculateTotals(DataTable dt)
        {
            decimal subTotal = 0;

            foreach (DataRow row in dt.Rows)
            {
                decimal price = Convert.ToDecimal(row["Price"]);
                int qty = Convert.ToInt32(row["qty"]);
                subTotal += price * qty;
            }

            lblSubTotal.Text = "$" + subTotal.ToString("0.00");
            decimal shipping = 70;
            lblShipping.Text = "$" + shipping.ToString("0.00");
            lblGrandTotal.Text = "$" + (subTotal + shipping).ToString("0.00");
        }

    }
}
