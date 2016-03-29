using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TelecomStore
{
    public partial class view_user : System.Web.UI.Page
    {
        
               dataaccess objdll = new dataaccess();
            SqlConnection con = new SqlConnection("Data Source=INCHNILPDB02;User ID=m97group1;Password=m97group1");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                dropdown();
                               
            }

        }
 private void getdata(string role)
             {
                 SqlConnection con = new SqlConnection("Data Source=INCHNILPDB02;User ID=m97group1;Password=m97group1");
                 DataTable dt = new DataTable();
                 con.Open();                 
                 SqlCommand cmd = new SqlCommand("sp_rolename", con);
                 cmd.CommandType = CommandType.StoredProcedure;
                 cmd.Parameters.AddWithValue("@role", ddlRole.SelectedItem.Text);
                 SqlDataAdapter da = new SqlDataAdapter(cmd);
                 da.Fill(dt);
                 GrViewTelecom.DataSource = dt;
                 GrViewTelecom.DataBind();
                 con.Close();
             }
    
        private void dropdown()
        {
           
            DataTable dt = new DataTable();
            con.Open();
            String sql = "SELECT distinct Role FROM UserInRoles";
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.ExecuteNonQuery();

            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                ddlRole.Items.Add("Select");
                for (int i = 0; i < dt.Rows.Count; i++)
                {

                    string role = dt.Rows[i]["Role"].ToString();
                    ddlRole.Items.Add(Role);
                }

            }
            cmd.Connection.Close();

        }

        protected void GrViewTelecom_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GrViewTelecom_RowEditing(object sender, GridViewEditEventArgs e)
        {
               Session["User_id"] = GrViewTelecom.SelectedRow.Cells[0].Text;
        }
        protected void GrViewTelecom_pageindexchanging(object sender, GridViewPageEventArgs e)
       {
        
           GrViewTelecom.PageIndex = e.NewPageIndex;
        }
        protected void ddlRole_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = objdll.getdata(ddlRole.SelectedValue.ToString());
            GrViewTelecom.DataSource = dt;
            GrViewTelecom.DataBind(); 


        }
    }
}