using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace TelecomStore.Users
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User != null)
            {
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    if (HttpContext.Current.User.IsInRole("2"))
                    {
                        Name.Text = Session["Name"].ToString();
                        displayID.Text = Session["User_id"].ToString();
                        Role.Text = Session["Role"].ToString();
                       
                    
                    }
                    else
                        Response.Redirect("/Users/Admin.aspx");
                }
            }
        //    displayID.Text = Session["User_id"].ToString();
        //Name.Text = HttpContext.Current.User.Identity.Name;
        //    Role.Text = Session["Role"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddingUsers.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewUserAdmin.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Tagging/Tagging.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Tagging/UnTagging.aspx");
        }
    }
}