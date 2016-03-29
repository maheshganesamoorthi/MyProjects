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
    public partial class ForgotPassword : System.Web.UI.Page
    {
        UserLogic oforgot = new UserLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            Password.Visible = false;
            Close.Visible = false;
            LoadDropDown();

        }
        public void LoadDropDown()
        {
            DataSet dt = new DataSet();
                            
        dt = oforgot.viewuser("sp_GetSecurityQuestion");

        if (dt.Tables[0].Rows.Count > 0)
            {
                DropDownSecurityQuestion.Items.Add("select");
                for (int i = 0; i < dt.Tables[0].Rows.Count; i++)
                {
                    string securityquestion = dt.Tables[0].Rows[i]["SecurityQuestion"].ToString();
                    DropDownSecurityQuestion.Items.Add(securityquestion);

                }
            }
            
        }

        

        protected void Submit_Click(object sender, EventArgs e)
        {
            DataSet dt = new DataSet();
            string userid = TxtUserID.Text.ToString();
            string securityques = DropDownSecurityQuestion.SelectedIndex.ToString();
            string answer = Answerbyuser.Text.ToString();
            dt = oforgot.GetDetails("sp_forgotpwd", userid);
            if (answer != dt.Tables[0].Rows[0][0].ToString())
            {
                Response.Write("Invalid answer");
             }
            else
            {
                dt = oforgot.GetDetails("sp_providepwd", userid);
                Password.Visible = true;
                Password.Text = dt.Tables[0].Rows[0][0].ToString();
                Close.Visible = true;
            }

        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Close_Click(object sender, EventArgs e)
        {
           Response.Redirect("Login.aspx");
        }

        
    }
}