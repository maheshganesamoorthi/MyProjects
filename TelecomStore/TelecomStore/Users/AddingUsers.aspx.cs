using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TelecomStore.BusinessObjects;
using TelecomStore.BusinessLogic;


namespace TelecomStore
{
    public partial class AddingUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //displayID.Text = Session["User_id"].ToString();
                //Name.Text = Session["Name"].ToString();
                //Role.Text = Session["Role"].ToString();
                lblMessage.Visible = false;
            }
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {

            string lblautopassword = CreateRandomPassword(8);
            User oUser = new User();
            UserLogic oLogic = new UserLogic();
            oUser.FirstName = FirstName.Text.ToString();
            oUser.LastName = LastName.Text.ToString();
            oUser.Address = Address.Text.ToString();
            oUser.Phone = PhoneNo.Text.ToString();
            oUser.Email = EmailID.Text.ToString();
            oUser.SecureQues = secureDropDownList.SelectedItem.ToString();
            oUser.SecureAns = secureAnswer.Text.ToString();
            oUser.Pwd = lblautopassword;            oUser.Role = UserRoles.SelectedItem.ToString();
            if (oLogic.addUser(oUser))
            {
                lblMessage.Visible = true;
                pwd.Visible = true;
                lblMessage.Text = "Your details have been added successfully.Password Is";
                pwd.Text = lblautopassword;
            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Failed to add your details,Enter Proper Details";
            }

            //pwd.Text = lblautopassword;
            ClearInputs(Page.Controls);
        }

        void ClearInputs(ControlCollection ctrls)  

 {  

     foreach (Control ctrl in ctrls)  

   {  

        if (ctrl is TextBox)  

             ((TextBox)ctrl).Text = string.Empty;  

       else if (ctrl is DropDownList)  

            ((DropDownList)ctrl).ClearSelection();  

   

        ClearInputs(ctrl.Controls);  

     }  

 } 

        public static string CreateRandomPassword(int PasswordLength)
        {
            string _allowedChars = "0123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ";
            Random randNum = new Random();
            char[] chars = new char[PasswordLength];
            int allowedCharCount = _allowedChars.Length;
            for (int i = 0; i < PasswordLength; i++)
            {
                chars[i] = _allowedChars[(int)((_allowedChars.Length) * randNum.NextDouble())];
            }
            return new string(chars);
        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("Admin.aspx");
        //}

        
    }
}