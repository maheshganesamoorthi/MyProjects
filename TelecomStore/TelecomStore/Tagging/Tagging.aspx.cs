using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using TelecomStore.BusinessObjects;
using TelecomStore.BusinessLogic;
namespace tagging
{
    public partial class _Default : System.Web.UI.Page
    {
        UserLogic otag = new UserLogic();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            displayID.Text = Session["User_id"].ToString();
            Name.Text = Session["Name"].ToString();
            Role.Text = Session["Role"].ToString();
            if (!IsPostBack)
            {

                TagRetailer();
                TagModelName();

            }


        }

        public void TagRetailer()
        {
             DataSet ds = new DataSet();

             ds = otag.tag("sp_GetRetailerId");
           

            if (ds.Tables[0].Rows.Count > 0)
            {
                DRBretailerID.Items.Add("select");
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    string id = ds.Tables[0].Rows[i]["User_id"].ToString();
                    DRBretailerID.Items.Add(id);
                }
            }
            
        }

        public void TagModelName()
        {
            DataSet ds = new DataSet();
            ds = otag.tag("sp_GetModelName");
            if (ds.Tables[0].Rows.Count > 0)
            {
                DRBmodelname.Items.Add("select");
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    string model = ds.Tables[0].Rows[i]["ModelName"].ToString();
                    DRBmodelname.Items.Add(model);
                }
            }
           
        }
        

        protected void DRBmodelname_SelectedIndexChanged(object sender, EventArgs e)
        {
           //con.Open();
           // SqlCommand cmd = new SqlCommand("sp_gettag", con);
           // cmd.CommandType = CommandType.StoredProcedure;
           // cmd.Parameters.AddWithValue("@modelname", DRBmodelname.SelectedItem.Text);
           // SqlDataAdapter da = new SqlDataAdapter(cmd);
           // DataSet ds = new DataSet();
           // da.Fill(ds);
            string id = DRBretailerID.SelectedItem.Text;
            DataSet ds = new DataSet();
            string model = DRBmodelname.SelectedItem.Text;
            ds = otag.viewgridTag("sp_gettag", model,id);
         
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridViewTagProducts.DataSource = ds;
                GridViewTagProducts.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridViewTagProducts.DataSource = ds;
                GridViewTagProducts.DataBind();
                int columncount = GridViewTagProducts.Rows[0].Cells.Count;
                GridViewTagProducts.Rows[0].Cells.Clear();
                GridViewTagProducts.Rows[0].Cells.Add(new TableCell());
                GridViewTagProducts.Rows[0].Cells[0].ColumnSpan = columncount;
                GridViewTagProducts.Rows[0].Cells[0].Text = "No Records Found";
            }
        }

        protected void btntag_Click(object sender, EventArgs e)
        {
            ArrayList itemsToAdd = new ArrayList();

            foreach (GridViewRow row in GridViewTagProducts.Rows)
            {
              

                    CheckBox check = (CheckBox)row.FindControl("tag");

                  
                        if (check.Checked)
                        {
                            string productId = row.Cells[1].Text;
                            itemsToAdd.Add(productId);
                        }                          
            }

            if (itemsToAdd.Count == 0)
            {
                LblTagProducts.Visible = true;
                LblTagProducts.Text = "Select Products to Tag";
            }
            else
            {
                addtag(itemsToAdd);
            }

        }


        private void addtag(ArrayList itemsToAdd)
        {

                                  
            string id = DRBretailerID.SelectedItem.Text;
          
            bool result = otag.checkTag("sp_tagging", id,itemsToAdd);
            if (result == true)
            {
                LblTagProducts.Visible = true;
                LblTagProducts.Text = "Tagged Successfully";
            } 
        
        }

        //protected void DRBretailerID_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    string id = DRBretailerID.SelectedItem.Text;
        //    if (id == "select")
        //    {
        //        LblTagProducts.Visible = true;
        //        LblTagProducts.Text = "Select RetailerID & ModelName";
        //    }
        //}

   
    
    }
}
