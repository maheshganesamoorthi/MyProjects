using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using TelecomStore.BusinessObjects;
using System.Data.SqlClient;
using TelecomStore.DataAccess.SQLHelper;

namespace TelecomStore.DataAccess
{
   public class CustDA
    {
        public DataSet GetAll()
        {
            return CustHelper.ExecuteDataSet("sp_ViewCustomer");
        }
       public DataSet ViewDetails(CustBO bo)
       {
           SqlParameter[] parameters = new SqlParameter[]
		{
            new SqlParameter("@CustomerID", bo.Id)
		};

           return CustHelper.ExecuteQuery("sp_ViewCustomerDetails", CommandType.StoredProcedure, parameters);
       }

        public DataSet Update(CustBO Comp)
        {
            SqlParameter[] parameters = new SqlParameter[]
		{
			new SqlParameter("@cusname", Comp.Name),
			new SqlParameter("@address", Comp.Address),
			new SqlParameter("@contactno", Comp. Contactno),
			new SqlParameter("@emailid", Comp.EmailId),
            new SqlParameter("@id", Comp.Id)
		};

            return CustHelper.ExecuteQuery("update_customer1", CommandType.StoredProcedure, parameters);
        }




        public DataSet Delete(CustBO Comp)
        {
            SqlParameter[] parameters = new SqlParameter[]
		{
            new SqlParameter("@id", Comp.Id)
			
		};

            return CustHelper.ExecuteQuery("delete_customerdet", CommandType.StoredProcedure, parameters);
        }
      


       
        public DataSet AddDetails(CustBO Comp)
        {
            SqlParameter[] parameters = new SqlParameter[]
		{
			new SqlParameter("@cusname", Comp.Name),
			new SqlParameter("@address", Comp.Address),
			new SqlParameter("@contactno", Comp.Contactno),
			new SqlParameter("@emailid", Comp.EmailId),
			
			
		};

            return CustHelper.ExecuteQuery("customoh", CommandType.StoredProcedure, parameters);
        }
    }
}

    

