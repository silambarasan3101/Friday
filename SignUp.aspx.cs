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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!Page.IsPostBack)
            {
                SignUpErrorLabel.Visible = false;
            }
        }

        protected void SignUpBtn_Click(object sender, EventArgs e)
        {
            SignUpErrorLabel.Text = string.Empty;

            if (Page.IsValid)
            {
                string firstName = FirstName.Text;
                string lastName = LastName.Text;
                string userName = UserName.Text;
                string email = Email.Text;
                string password = Password.Text;

                if (InsertUserIntoDatabase(firstName, lastName, userName, email, password))
                {
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    SignUpErrorLabel.Visible = true;
                    SignUpErrorLabel.Text = "An error occurred while creating your account. Please try again later.";
                }
            }
            else
            {
                SignUpErrorLabel.Visible = true;
                SignUpErrorLabel.Text = "There are errors in the form. Please fix them and try again.";
            }
        }

        private bool InsertUserIntoDatabase(string firstName, string lastName, string userName, string email, string password)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ValidatorConnector"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand("Insert Into customers (FirstName, LastName, UserName, Email, Password) VALUES (@FirstName, @LastName, @UserName, @Email, @Password)", con);
                con.Open();
                cmd.Parameters.AddWithValue("@FirstName", firstName);
                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@UserName", userName);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);

                int rowsAffected = cmd.ExecuteNonQuery();
                return rowsAffected > 0;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

    }
}