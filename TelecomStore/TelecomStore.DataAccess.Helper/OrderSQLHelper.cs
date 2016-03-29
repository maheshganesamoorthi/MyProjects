using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using TelecomStore.BusinessObjects;

namespace TelecomStore.DataAccess.Helper
{
    public class OrderSQLHelper
    {
        protected static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["DB"].ConnectionString;

        }
        public static DataSet ExecuteDataSet(string procName)
        {
            DataSet ds = new DataSet();
            try
            {
                using (SqlConnection Conn = new SqlConnection(GetConnectionString()))
                {
                    SqlCommand cmd = new SqlCommand(procName, Conn);
                    SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                    Conn.Open();
                    adapt.Fill(ds);
                    Conn.Close();

                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            return ds;
        }

        public static DataSet ExecuteQuery(string CommandName, CommandType cmdType, SqlParameter[] pars)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand(CommandName, conn);
            cmd.CommandType = cmdType;
            cmd.Parameters.AddRange(pars);
            DataSet ds = new DataSet();
            try
            {
                SqlDataAdapter objadapter = new SqlDataAdapter(cmd);
                objadapter.Fill(ds);
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            return ds;
        }

        //public static DataSet ExecuteQuery(string CommandName, CommandType cmdType, SqlParameter[] pars)
        //{
    }
}
