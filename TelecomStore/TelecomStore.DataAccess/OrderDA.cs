using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using TelecomStore.BusinessObjects;
using TelecomStore.DataAccess.Helper;
using System.Data.SqlClient;

namespace TelecomStore.DataAccess
{
    public class OrderDA
    {
        OrderBO bo = new OrderBO();
        public DataSet ProductName(OrderBO bo)
        {
             SqlParameter[] parameters = new SqlParameter[]
            {                
            new SqlParameter("@modelName", bo.Selected_mname)
            };
            return OrderSQLHelper.ExecuteQuery("sp_GetProductName", CommandType.StoredProcedure, parameters);
        }
        public DataSet modelName()
        {
            return OrderSQLHelper.ExecuteDataSet("select distinct ModelName from ProductModel");
        }
        public DataSet loadgridview(ProductSelection oproduct)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {                
            new SqlParameter("@productName", oproduct.ProductName)
            };
            return OrderSQLHelper.ExecuteQuery("sp_ProductModelName", CommandType.StoredProcedure, parameters);
        }
        public DataSet addSelectedProduct(ProductSelection oproduct,OrderBO bo)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {                
            new SqlParameter("@Productcode", oproduct.ProductCode),
            new SqlParameter("@ProductModel", oproduct.ProductName),
            new SqlParameter("@Price", oproduct.Price),
            };
            
            return OrderSQLHelper.ExecuteQuery("sp_SelectedProducts", CommandType.StoredProcedure,parameters);
        }
        public DataSet fetchSelectedProduct()
        {    
            return OrderSQLHelper.ExecuteDataSet("select * from tel_product_selection");
        }
        public DataSet CalculateAmount()
        {
            return OrderSQLHelper.ExecuteDataSet("sp_CalculateAmount");
        }
        public DataSet DeleteSelectedProduct()
        {      
            return OrderSQLHelper.ExecuteDataSet("sp_DeleteSelection");
        }
        public DataSet CreateOrder(OrderBO bo)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {                
            new SqlParameter("@Cusid",bo.Selected_cid),
            new SqlParameter("@Amt",bo.Amount),
            };
            return OrderSQLHelper.ExecuteQuery("sp_CreateOrder", CommandType.StoredProcedure, parameters);
        }
        public DataSet SelectOrderid(OrderBO bo)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {                
            new SqlParameter("@Cusid",bo.Selected_cid)
            };
            return OrderSQLHelper.ExecuteQuery("sp_GetOrderID", CommandType.StoredProcedure, parameters);
        }
        public DataSet UpdateProduct(OrderBO bo,ProductSelection ps)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {                
            new SqlParameter("@OrderID",bo.OrderID),
            new SqlParameter("@ProductCode",ps.ProductCode),
            };
            return OrderSQLHelper.ExecuteQuery("sp_UpdateProduct", CommandType.StoredProcedure, parameters);
        }
        public DataSet ViewSelectedProduct(OrderBO bo)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {                
            new SqlParameter("@OrderID",bo.OrderID),
            };
            return OrderSQLHelper.ExecuteQuery("sp_ViewOrderProduct", CommandType.StoredProcedure, parameters);
        }
        public DataSet ViewOrderDet(OrderBO bo)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {                
            new SqlParameter("@OrderID",bo.OrderID),
            };
            return OrderSQLHelper.ExecuteQuery("sp_ViewOrderDetails", CommandType.StoredProcedure, parameters);
        }
        public DataSet CancelOrder(OrderBO bo)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {                
            new SqlParameter("@OrderID",bo.OrderID),
            new SqlParameter("@Cusid",bo.Selected_cid),
            };
            return OrderSQLHelper.ExecuteQuery("sp_CancelOrder", CommandType.StoredProcedure, parameters);
        }
        public DataSet getproducts(OrderBO bo)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {                
            new SqlParameter("@OrderStatus",bo.OrderStatus),
            };
            return OrderSQLHelper.ExecuteQuery("sp_GetOrder", CommandType.StoredProcedure, parameters);
        }
    }
}
