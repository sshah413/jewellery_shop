using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JewellryShop
{
    public partial class Login : System.Web.UI.Page
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

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text == "" || txtPassword.Text == "")
            {
                lblMessage.Text = "All fields Required ";
                lblMessage.CssClass = "message-error";
                return;
            }

            GetCon();
            string command = "Select * from users where Email = '" + txtEmail.Text + "' and Password = '" + txtPassword.Text + "'";
            cmd = new SqlCommand(command, con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {

                Session["userName"] = dr["FName"].ToString();
                Session["userEmail"] = dr["Email"].ToString();
                Session["userId"] = dr["Id"].ToString();
                string role = dr["Role"].ToString();
                if (role == "admin")
                {
                    Session["Role"] = "admin";
                }

                Response.Redirect("Home.aspx");
            }
            else
            {
                lblMessage.Text = "User Not Found";
                lblMessage.CssClass = "message-error";
            }
        }
    }
}