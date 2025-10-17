using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.IO; // Required for Path.GetFileName()

namespace JewellryShop
{
    public partial class AdminViewProducts : System.Web.UI.Page
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
            string query = "SELECT Id, PName, SKU, Category, Price, Image, Badge FROM Products";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvProducts.DataSource = dt;
            gvProducts.DataBind();
            con.Close();
        }

        protected void gvProducts_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvProducts.EditIndex = e.NewEditIndex;
            BindProductGrid();
        }

        protected void gvProducts_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvProducts.EditIndex = -1;
            BindProductGrid();
        }

        protected void gvProducts_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int productID = Convert.ToInt32(gvProducts.DataKeys[e.RowIndex].Value);

            TextBox txtPName = (TextBox)gvProducts.Rows[e.RowIndex].FindControl("txtPName");
            TextBox txtSKU = (TextBox)gvProducts.Rows[e.RowIndex].FindControl("txtSKU");
            TextBox txtCategory = (TextBox)gvProducts.Rows[e.RowIndex].FindControl("txtCategory");
            TextBox txtPrice = (TextBox)gvProducts.Rows[e.RowIndex].FindControl("txtPrice");
            TextBox txtBadge = (TextBox)gvProducts.Rows[e.RowIndex].FindControl("txtBadge");
            FileUpload fileUploadImage = (FileUpload)gvProducts.Rows[e.RowIndex].FindControl("fileUploadImage");

            string imageUpdateQueryPart = "";

            // Check if a new file has been uploaded
            if (fileUploadImage.HasFile)
            {
                string fnm = Path.GetFileName(fileUploadImage.FileName);
                fileUploadImage.SaveAs(Server.MapPath("~/Images/" + fnm));
                imageUpdateQueryPart = ", Image = '" + fnm + "'"; // Add image update to SQL
            }

            GetCon();
            // The command is now built dynamically to include the image part only if needed
            string command = "UPDATE Products SET PName = '" + txtPName.Text + "', SKU = '" + txtSKU.Text + "', Category = '" + txtCategory.Text + "', Price = '" + txtPrice.Text + "', Badge = '" + txtBadge.Text + "'" + imageUpdateQueryPart + " WHERE Id = " + productID;
            cmd = new SqlCommand(command, con);

            cmd.ExecuteNonQuery();
            lblMessage.Text = "Product updated successfully!";
            lblMessage.CssClass = "message-success";
            con.Close();

            gvProducts.EditIndex = -1;
            BindProductGrid();
        }

        protected void gvProducts_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int productID = Convert.ToInt32(gvProducts.DataKeys[e.RowIndex].Value);

            GetCon();
            string command = "DELETE FROM Products WHERE Id = " + productID;
            cmd = new SqlCommand(command, con);

            cmd.ExecuteNonQuery();
            lblMessage.Text = "Product deleted successfully!";
            lblMessage.CssClass = "message-success";
            con.Close();

            BindProductGrid();
        }
    }
}

