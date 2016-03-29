using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace TelecomStore.DataAccess.SQLHelper
{
    public class CustHelper
    {
        protected static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        }
        public static DataSet ExecuteQuery(string CommandName, CommandType cmdType, SqlParameter[] pars)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand(CommandName, conn);
            cmd.CommandType = cmdType;
            cmd.Parameters.AddRange(pars);
            DataSet objDS = new DataSet();
            try
            {
                SqlDataAdapter objadapter = new SqlDataAdapter(cmd);
                objadapter.Fill(objDS);
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            return objDS;

        }

        public static DataSet ExecuteDataSet(string getproductmodelprocedure)
        {
            DataSet objDS = new DataSet();

            try
            {
                using (SqlConnection oConn = new SqlConnection(GetConnectionString()))
                {
                    SqlDataAdapter oAdapter = new SqlDataAdapter(getproductmodelprocedure, oConn);
                    oAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    oAdapter.Fill(objDS);
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            return objDS;
        }
    }
}


