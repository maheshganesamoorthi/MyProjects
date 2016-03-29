using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TelecomStore.BusinessObjects;
using TelecomStore.DataAccess;
using System.Data.SqlClient;
using System.Data;


namespace TelecomStore.BusinessLogic
{
    public class OrderBL
    {
        OrderDA oOrderDA = new OrderDA();
        public DataSet GetDS()
        {
            return oOrderDA.modelName();
        }
        public DataSet ProductName(OrderBO bo)
        {
            return oOrderDA.ProductName(bo);
        }
        public DataSet loadgridview(ProductSelection oproduct)
        {
            return oOrderDA.loadgridview(oproduct);
        }
        public DataSet addSelectedProduct(ProductSelection oproduct,OrderBO bo)
        {
            return oOrderDA.addSelectedProduct(oproduct,bo);

        }
        public DataSet fetchSelectedProducts()
        {
            return oOrderDA.fetchSelectedProduct();
        }
        public DataSet CalculateAmount()
        {
            return oOrderDA.CalculateAmount();
        }
        public DataSet DeleteSelectedProduct()
        {
            return oOrderDA.DeleteSelectedProduct();
        }
        public DataSet CreateOrder(OrderBO bo)
        {
            return oOrderDA.CreateOrder(bo);
        }
        public DataSet SelectOrderid(OrderBO bo)
        {
            return oOrderDA.SelectOrderid(bo);
        }
        public DataSet UpdateProduct(OrderBO bo,ProductSelection ps)
        {
            return oOrderDA.UpdateProduct(bo,ps);
        }
        public DataSet ViewOrderProduct(OrderBO bo)
        {
            return oOrderDA.ViewSelectedProduct(bo);
        }
        public DataSet ViewOrderDet(OrderBO bo)
        {
            return oOrderDA.ViewOrderDet(bo);
        }
        public DataSet CancelOrder(OrderBO bo)
        {
            return oOrderDA.CancelOrder(bo);
        }
        public DataSet getproducts(OrderBO bo)
        {
            return oOrderDA.getproducts(bo);
        }
    }
   
}
