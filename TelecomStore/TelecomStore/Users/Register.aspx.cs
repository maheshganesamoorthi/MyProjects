using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TelecomStore.BusinessObjects;
using TelecomStore.BusinessLogic;

namespace TelecomStore.Users
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
            oUser.SecureQues = secureDropDownList1.SelectedItem.ToString();
            oUser.SecureAns = secureAnswer.Text.ToString();
            oUser.Pwd = lblautopassword;
            oUser.Role = UserRoles.SelectedItem.ToString();
            if (oLogic.addUser(oUser))
                lblMessage.Text = "Your details have been added successfully";
            else
                lblMessage.Text = "Failed to add your details";

            pwd.Text = lblautopassword;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

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

        }

    }
