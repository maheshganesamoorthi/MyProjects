using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using TelecomStore.BusinessLogic;

namespace TelecomStore.UserAccount
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        UserLogic oChangePwd = new UserLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelPassword.Visible = false;
        }

        protected void Submit_Click(object sender, EventArgs e)
        {

            int res;
            string newpwd = txtPwd.Text.ToString();
            string confirmpwd = txtConfirm.Text.ToString();
            if (newpwd == confirmpwd)
            {


               
                string userid = (string)Session["User_id"];
              
                string proc = "sp_NewPasswordDetails";
               res= oChangePwd.pwd(proc, userid, newpwd);

               
                //cmd.Parameters.AddWithValue("@id", SqlDbType.Int).Value = userid;
                //cmd.Parameters.AddWithValue("@Newpwd", SqlDbType.Int).Value = newpwd;
               if (res != 0)
               {

                   LabelPassword.Visible = true;
                   LabelPassword.Text = "Your password has been changed successfully";
               }
                //Response.Redirect("Login.aspx");


            }
            else
            {
                LabelPassword.Visible = true;
                LabelPassword.Text = "passwords do not match";
            }
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}