using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using TelecomStore.DataAccess.Helper;
using TelecomStore.BusinessObjects;
using TelecomStore.BusinessLogic;
namespace TelecomStore
{
    public partial class view_user : System.Web.UI.Page
    {
        UserLogic oview = new UserLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            displayID.Text = Session["User_id"].ToString();
            Name.Text = Session["Name"].ToString();
            Role.Text = Session["Role"].ToString();

            if (!IsPostBack)
            {
              
                ViewUser();
            }

        }
        protected void BindGridViewViewUser()
        {
            DataSet ds = new DataSet();
            string role = DropDownListRole.SelectedItem.Text;
            ds = oview.viewgrid("sp_ViewUser", role);
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridViewViewUser.DataSource = ds;
                GridViewViewUser.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridViewViewUser.DataSource = ds;
                GridViewViewUser.DataBind();
                int columncount = GridViewViewUser.Rows[0].Cells.Count;
                GridViewViewUser.Rows[0].Cells.Clear();
                GridViewViewUser.Rows[0].Cells.Add(new TableCell());
                GridViewViewUser.Rows[0].Cells[0].ColumnSpan = columncount;
                GridViewViewUser.Rows[0].Cells[0].Text = "No Records Found";
            }
        }

        protected void DropDownListRole_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindGridViewViewUser();        
           
        }

      

        
        public void ViewUser()
        {
           DataSet ds = new DataSet();
           ds = oview.viewuser("sp_GetRoleName");
    
            if (ds.Tables[0].Rows.Count > 0)
            {
                DropDownListRole.Items.Add("select");
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    string Role = ds.Tables[0].Rows[i]["RoleName"].ToString();
                    DropDownListRole.Items.Add(Role);
                }
            }

           
        }



        protected void GridViewViewUser_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataSet ds = new DataSet();
            int userid = Convert.ToInt32(GridViewViewUser.DataKeys[e.RowIndex].Values["User_Id"].ToString());
            string cmd = "sp_deleteUser";
            bool result = oview.deleteuser(cmd, userid);
         
            if (result == true)
            {
                BindGridViewViewUser();
                LblMessage.Visible = true;
                LblMessage.Text = " details deleted successfully";


            }

        }

        protected void GridViewViewUser_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {


        }

        protected void GridViewViewUser_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Session["ID"] = GridViewViewUser.SelectedRow.Cells[0].Text;
            //GridView1.EditIndex = e.NewEditIndex;
            //BindGridView1();

        }

        protected void GridViewViewUser_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //GridView1.EditIndex = -1;
            //BindGridView1();

        }

        protected void GridViewViewUser_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewViewUser.PageIndex = e.NewPageIndex;
            BindGridViewViewUser();
            // string c = DropDownList1.SelectedValue.ToString();
            //objdll.getData(c);
            //DataTable dt1 = new DataTable();
            //dt1 = objdll.getdata(DropDownListRole.SelectedValue.ToString());
            //GridViewViewUser.DataSource = dt1;
            //GridViewViewUser.DataBind(); 
        }

      
        //protected void Back_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("Admin.aspx");
        //}
 
    }

    }
