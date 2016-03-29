using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TelecomStore
{
    public partial class view_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         if (!IsPostBack)
            {

                 DataTable dt = new DataTable();
                 string custId = Request.QueryString["Userid"];  
               SqlConnection con = new SqlConnection("Data Source=INCHNILPDB02;User ID=m97group1;Password=m97group1");
               string cmdstring = "select Userid,FirstName,MiddleName,LastName,Address,Emailid,Phone from UserDetails where Userid='" + custId + "'";
               
               SqlCommand cmd = new SqlCommand("sp_rolename", con);
                con.Open();
                 SqlDataAdapter da = new SqlDataAdapter(cmd);

                dt.Clear ();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {

                    userid_label.Text = dt.Rows[0][0].ToString();
                    userfname_label.Text = dt.Rows[0][1].ToString();
                    usermname_label.Text = dt.Rows[0][2].ToString();
                    userlname_label.Text = dt.Rows[0][3].ToString();
                    useradd_label.Text = dt.Rows[0][4].ToString();
                    useremail_label.Text = dt.Rows[0][5].ToString();
                    userph_label.Text = dt.Rows[0][6].ToString();

                }
            }
        }
        }
    }
