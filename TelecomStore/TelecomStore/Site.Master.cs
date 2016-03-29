using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace TelecomStore
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User != null)
            {
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    if (HttpContext.Current.User.IsInRole("1"))
                    {
                        Session["Role"] = "SUPER ADMIN";
                        MenuItem item = new MenuItem();
                        item.Text = "SUPER ADMIN";
                        NavigationMenu.Items.Add(item);
                        MenuItem itemchild1 = new MenuItem();
                        itemchild1.Text = "ADD USER";
                        itemchild1.NavigateUrl = "~/Users/AddingUsers.aspx";
                        item.ChildItems.Add(itemchild1);
                       
                        MenuItem itemchild2 = new MenuItem();
                        itemchild2.Text = "VIEW/UPDATE/DELETE";
                        itemchild2.NavigateUrl = "~/Users/ViewUser.aspx";
                        item.ChildItems.Add(itemchild2);
                        MenuItem itemchild3 = new MenuItem();
                        itemchild3.Text = "TAG PRODUCTS";
                        itemchild3.NavigateUrl = "~/Tagging/Tagging.aspx";
                        item.ChildItems.Add(itemchild3);
                        MenuItem itemchild4 = new MenuItem();
                        itemchild4.Text = "UNTAG PRODUCTS";
                        itemchild4.NavigateUrl = "~/Tagging/UnTagging.aspx";
                        item.ChildItems.Add(itemchild4);


                    }
                    if (HttpContext.Current.User.IsInRole("2"))
                    {
                        Session["Role"] = "ADMIN";
                        MenuItem item = new MenuItem();
                        item.Text = "ADMIN";
                        NavigationMenu.Items.Add(item);
                        MenuItem itemchild1 = new MenuItem();
                        itemchild1.Text = "ADD USER";
                        itemchild1.NavigateUrl = "~/Users/AddingUsers.aspx";
                        item.ChildItems.Add(itemchild1);

                        MenuItem itemchild2 = new MenuItem();
                        itemchild2.Text = "VIEW/UPDATE/DELETE";
                        itemchild2.NavigateUrl = "~/Users/AdminViewUser.aspx";
                        item.ChildItems.Add(itemchild2);
                        MenuItem itemchild3 = new MenuItem();
                        itemchild3.Text = "TAG PRODUCTS";
                        itemchild3.NavigateUrl = "~/Tagging/Tagging.aspx";
                        item.ChildItems.Add(itemchild3);
                        MenuItem itemchild4 = new MenuItem();
                        itemchild4.Text = "UNTAG PRODUCTS";
                        itemchild4.NavigateUrl = "~/Tagging/UnTagging.aspx";
                        item.ChildItems.Add(itemchild4);


                    }
                    if (HttpContext.Current.User.IsInRole("3"))
                    {
                        Session["Role"] = "RETAILER";
                        MenuItem item = new MenuItem();
                        item.Text = "RETAILER";
                        NavigationMenu.Items.Add(item);
                   }
                    if (HttpContext.Current.User.IsInRole("4"))
                    {
                        Session["Role"] = "INVENTORY MANAGER";
                        MenuItem item = new MenuItem();
                        item.Text = "INVENTORY MANAGER";
                        NavigationMenu.Items.Add(item);
                        
                    }




                }
            }
        }
    }
}
        //if (HttpContext.Current.User.IsInRole("4"))
        //            {
        //                NavigationMenu.DataSource = GetSiteMapDataSource("IMSiteMap.sitemap");
        //                NavigationMenu.DataBind();

        //            }
        //private SiteMapDataSource GetSiteMapDataSource(string role)
        //{
        //    XmlSiteMapProvider xmlSiteMap = new XmlSiteMapProvider();
        //    System.Collections.Specialized.NameValueCollection
        //           myCollection = new
        //           System.Collections.Specialized.NameValueCollection(1);
        //                myCollection.Add("siteMapFile",role );
        //                xmlSiteMap.Initialize("SuperadminMapProvider", myCollection);
        //    xmlSiteMap.BuildSiteMap();
        //    SiteMapDataSource siteMap = new SiteMapDataSource();
        //    return siteMap;
        //}
        //}
    

