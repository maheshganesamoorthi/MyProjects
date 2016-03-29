using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TelecomStore.Users
{
    public partial class Retailer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User != null)
            {
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    if (HttpContext.Current.User.IsInRole("3"))
                    {
                        Name.Text = Session["Name"].ToString();
                        displayID.Text = Session["User_id"].ToString();
                        Role.Text = "RETAILER";
                       
                    }
                    else
                        Response.Redirect("/Users/SuperAdmin.aspx");
                }
            }
            //displayID.Text = Session["User_id"].ToString();
            //Name.Text = Session["Name"].ToString();
            //Role.Text = Session["Role"].ToString();
        }
    }
}