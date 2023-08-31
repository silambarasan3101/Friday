using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Friday
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!Page.IsPostBack)
            {
                ErrorMessageLabel.Visible = false;
            }
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            string givenUserName = TxtUserName.Text;
            string givenPassword = TxtPwd.Text;
            if (IsValidCredentials(givenUserName, givenPassword))
            {
                Response.Redirect("~/Home.aspx");
            }
            else
            {
                ErrorMessageLabel.Visible = true;
                ErrorMessageLabel.Text = "Invalid username or password";
            }
        }
        private bool IsValidCredentials(string username, string password)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ValidatorConnector"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Count(*) From customers where Username=@username and Password=@password", con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            int count = (int)cmd.ExecuteScalar();
            con.Close();
            return count > 0;
        }
    }
}