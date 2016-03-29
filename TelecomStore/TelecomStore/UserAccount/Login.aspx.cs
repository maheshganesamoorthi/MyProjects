using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Web.Security;


namespace TelecomStore.UserAccount
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Session["User_id"] = TxtUserName.Text.Trim();

             if (TxtUserName.Text != string.Empty && TxtPassword.Text != string.Empty)
                  {   
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection("Data Source=INCHNILPDB02;Initial Catalog=CHN12M97GROUP2;User ID=m97group2;Password=m97group2");
            SqlCommand cmd = new SqlCommand("sp_login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.Add("@userid", SqlDbType.Int).Value = TxtUserName.Text.Trim();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                if (reader.Read())
                {
                    // Create a new ticket used for authentication
                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                       1, // Ticket version
                       reader.GetString(2).ToString(), // Username associated with ticket
                       DateTime.Now, // Date/time issued
                       DateTime.Now.AddMinutes(10), // Date/time to expire
                       true, // "true" for a persistent user cookie
                       reader.GetValue(3).ToString(), // User-data, in this case the roles
                       FormsAuthentication.FormsCookiePath);// Path cookie valid for

                    // Encrypt the cookie using the machine key for secure transport
                    string hash = FormsAuthentication.Encrypt(ticket);
                    HttpCookie cookie = new HttpCookie(
                       FormsAuthentication.FormsCookieName, // Name of auth cookie
                       hash); // Hashed ticket

                    Session["Name"] = reader.GetString(2).ToString();
                   
                    string password = reader.GetValue(0).ToString();
                    string checking = reader.GetValue(1).ToString();
                    if (TxtPassword.Text == password)
                    {
                        if (checking == "false")
                        {
                            Response.Redirect("ChangePassword.aspx");
                        }
                        //Session["User_id"] = TxtUserName.Text.ToString();
                        // Set the cookie's expiration time to the tickets expiration time
                        if (ticket.IsPersistent) cookie.Expires = ticket.Expiration;

                        // Add the cookie to the list for outgoing response
                        Response.Cookies.Add(cookie);

                        // Redirect to requested URL, or homepage if no previous page
                        // requested
                        string returnUrl = Request.QueryString["ReturnUrl"];
                        if (returnUrl == null) returnUrl = "~/Users/Home.aspx";

                        // Don't call FormsAuthentication.RedirectFromLoginPage since it
                        // could
                        // replace the authentication ticket (cookie) we just added
                        Response.Redirect(returnUrl);


                        reader.Close();
                        con.Close();

                    }
                    else
                        LblMessage.Text = "Invalid Login";
                }
                
                }
            }
             else
                 LblMessage.Text = "Invalid Login";
        }

        protected void btnCancel_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/Users/Home.aspx");
        }
    }
}