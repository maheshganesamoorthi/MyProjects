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


namespace TelecomStore.Tagging
{
    public partial class UnTagging : System.Web.UI.Page
    {
        UserLogic ountag = new UserLogic();

        static string prevPage = String.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            prevPage = Request.UrlReferrer.ToString();
            LblUntagProducts.Visible = false;
          
            displayID.Text = Session["User_id"].ToString();
            Name.Text = Session["Name"].ToString();
            Role.Text = Session["Role"].ToString();

            if (!IsPostBack)
            {

                TaggedRetailer();


            }

        }
        public void TaggedRetailer()
        {
            DataSet ds = new DataSet();
            ds = ountag.tag("sp_GetTaggedRetailer");
            if (ds.Tables[0].Rows.Count > 0)
            {
                DRDRetailerId.Items.Add("select");
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    string id = ds.Tables[0].Rows[i]["User_id"].ToString();
                    DRDRetailerId.Items.Add(id);
                }
            }


        }







        

        protected void BtnUntag_Click(object sender, System.EventArgs e)
        {
            ArrayList itemsToDelete = new ArrayList();

            foreach (GridViewRow row in GridViewUntagProducts.Rows)
            {



                CheckBox check = (CheckBox)row.FindControl("untag");


                if (check.Checked)
                {
                    string productId = row.Cells[1].Text;
                    itemsToDelete.Add(productId);
                }

            }
            if (itemsToDelete.Count == 0)
            {
                LblUntagProducts.Visible = true;
                LblUntagProducts.Text = "Select Products to Un-Tag";
            }
            else
            {
                untag(itemsToDelete);
            }

         
        }

        private void untag(ArrayList itemsToDelete)
        {

            string id = DRDRetailerId.SelectedItem.Text;
            bool result = ountag.checkUnTag("sp_untag", id, itemsToDelete);
            if (result == true)
            {
                LblUntagProducts.Visible = true;
                LblUntagProducts.Text = "Un-Tagged Successfully";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           //window.history.go(-1);
            Response.Redirect(prevPage);



        }

        protected void DRDRetailerId_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            string id = DRDRetailerId.SelectedItem.Text;
            ds = ountag.viewgridUnTag("sp_gettagged", id);
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridViewUntagProducts.DataSource = ds;
                GridViewUntagProducts.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridViewUntagProducts.DataSource = ds;
                GridViewUntagProducts.DataBind();
                int columncount = GridViewUntagProducts.Rows[0].Cells.Count;
                GridViewUntagProducts.Rows[0].Cells.Clear();
                GridViewUntagProducts.Rows[0].Cells.Add(new TableCell());
                GridViewUntagProducts.Rows[0].Cells[0].ColumnSpan = columncount;
                GridViewUntagProducts.Rows[0].Cells[0].Text = "No Records Found";
            }

        }


    }
}