using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JewellryShop
{
	public partial class Contact : System.Web.UI.Page
	{
        string s = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\JewelryShop.mdf;Integrated Security=True;";

        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
		{

		}
		public void getcon()
		{
			con = new SqlConnection(s);
			con.Open();
		}

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text == "" || txtMessage.Text == "" || txtFirstName.Text == "" || txtLastName.Text == "" || txtSubject.Text == "")
            {
                lblFormMessage.Text = "All fields Required ";
                lblFormMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }
            getcon();
            string command = "Insert into Contacts (FirstName, LastName, Email, Subject, Message) values ('" + txtFirstName.Text + "', '" + txtLastName.Text + "', '" + txtEmail.Text + "', '" + txtSubject.Text + "', '" + txtMessage.Text + "')";
            cmd = new SqlCommand(command, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblFormMessage.Text = "Message Sent Successfully";
                lblFormMessage.ForeColor = System.Drawing.Color.Green;
                txtFirstName.Text = "";
                txtLastName.Text = "";
                txtEmail.Text = "";
                txtSubject.Text = "";
                txtMessage.Text = "";
            }
            else
            {
                lblFormMessage.Text = "Error Occurred, Please try again";
                lblFormMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}