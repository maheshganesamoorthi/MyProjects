using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using TelecomStore.DataAccess.Helper;
using TelecomStore.BusinessObjects;
using TelecomStore.BusinessLogic;



namespace TelecomStore
{
    public partial class UpdateUser : System.Web.UI.Page
    {

        UserLogic oUpdate = new UserLogic();
     
        protected void Page_Load(object sender, EventArgs e)
        {

            displayID.Text = Session["User_id"].ToString();
            Name.Text = Session["Name"].ToString();
            Role.Text = Session["Role"].ToString();

            if (!IsPostBack)
            {
                LblUpdate.Visible = false;
                DataSet dt = new DataSet();
                string id = Request.QueryString["ID"];
               dt= oUpdate.GetDetails("sp_GetUpdate",id);
               if (dt.Tables[0].Rows.Count > 0)
                {
                    TxtUserid.Text = dt.Tables[0].Rows[0][0].ToString();
                    TxtFname.Text = dt.Tables[0].Rows[0][1].ToString();
                    TxtLname.Text = dt.Tables[0].Rows[0][2].ToString();
                    TxtAddress.Text = dt.Tables[0].Rows[0][3].ToString();
                    TxtPhone.Text = dt.Tables[0].Rows[0][4].ToString();
                    TxtEmail.Text = dt.Tables[0].Rows[0][5].ToString();
                }

               
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            string proc = "sp_UpdateUser";
            string firstname = TxtFname.Text.ToString();
            string lastname = TxtLname.Text.ToString();
            string Address = TxtAddress.Text.ToString();
            string Phone = TxtPhone.Text.ToString();
            string Email = TxtEmail.Text.ToString();

            bool result = oUpdate.updateuser(proc,id,firstname,lastname,Address,Phone,Email) ;

            if (result == true)
            {
                LblUpdate.Visible = true;
                LblUpdate.Text = "updated successfully";
            }
            else
            {
                LblUpdate.Visible = true;
                LblUpdate.Text = "Not-Updated";
            }
        }

     
    
    }
}
