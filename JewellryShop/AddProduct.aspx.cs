using System;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;

namespace JewellryShop
{
    public partial class AddProduct : System.Web.UI.Page
    {
        string s = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\JewelryShop.mdf;Integrated Security=True;";

        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public void GetCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtPName.Text) ||      
                string.IsNullOrEmpty(txtPDesc.Text) ||
                string.IsNullOrEmpty(txtPrice.Text) ||
                string.IsNullOrEmpty(txtSKU.Text))
            {
                lblMessage.Text = "Please fill out all the required fields.";
                lblMessage.CssClass = "message-error";
                return;
            }

            if (ddlCategory.SelectedValue == "")
            {
                lblMessage.Text = "Please select a category.";
                lblMessage.CssClass = "message-error";
                return;
            }

            if (!flpimg.HasFile)
            {
                lblMessage.Text = "Please select a product image.";
                lblMessage.CssClass = "message-error";
                return;
            }

          
            string fnm = Path.GetFileName(flpimg.FileName);
            flpimg.SaveAs(Server.MapPath("~/Images/" + fnm));

            
            GetCon();
            string command = "INSERT INTO Products (PName, Price, PDescription, SKU, Category, Badge, Image) VALUES ('" + txtPName.Text + "', '" + txtPrice.Text + "', '" + txtPDesc.Text + "', '" + txtSKU.Text + "', '" + ddlCategory.SelectedValue + "', '" + ddlBadge.SelectedValue + "', '" + fnm + "')";
            cmd = new SqlCommand(command, con);

            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                lblMessage.Text = "Product Added Successfully";
                lblMessage.CssClass = "message-success";
                ClearForm();
            }
            else
            {
                lblMessage.Text = "Error: Could not add the product.";
                lblMessage.CssClass = "message-error";
            }            
        }

        private void ClearForm()
        {
            txtPName.Text = "";
            txtPDesc.Text = "";
            txtPrice.Text = "";
            txtSKU.Text = "";
            ddlCategory.SelectedIndex = 0;
            ddlBadge.SelectedIndex = 0;
        }
    }
}