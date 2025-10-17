using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JewellryShop
{
	public partial class Register : System.Web.UI.Page
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

        protected void btnRegister_Click(object sender, EventArgs e)
        {
			if(txtPassword.Text != txtCPassword.Text)
			{
				lblMessage.Text = "Confirm Password does not match ";
                lblMessage.CssClass = "message-error";
				return;
            }
			if(txtfnm.Text == "" || txtemail.Text == "" || txtPhone.Text == "" || txtPassword.Text == "")
			{
				lblMessage.Text = "All the fields are Required";
                lblMessage.CssClass = "message-error";
				return;
            }

			GetCon();
			string query = ("insert into users(FName,LName,Email,Phone,Password) values('"+txtfnm.Text+"','"+txlnm.Text+"','"+txtemail.Text+"','"+txtPhone.Text+"','"+txtPassword.Text+"')");
			cmd = new SqlCommand(query, con);
			int rows = cmd.ExecuteNonQuery();
			if(rows > 0)
			{
				lblMessage.Text = "Data  Inserted Sucessfully ";
				lblMessage.CssClass = "message-success";

			}
			else
			{
				lblMessage.Text = "Error while inserting Data";
				lblMessage.CssClass = "message-error";
			}

        }
    }
}