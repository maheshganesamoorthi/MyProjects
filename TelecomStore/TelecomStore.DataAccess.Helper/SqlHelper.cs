using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using TelecomStore.DataAccess;
using TelecomStore.BusinessObjects;
using System.Collections;
namespace TelecomStore.DataAccess.Helper
{
    public class SqlHelper
    {
        protected static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        }

        public static int ExecuteDataNonQuery(string procName, List<SqlParameter> oParams)
        {
            int result = 0;
            try
            {
                using (SqlConnection oConn = new SqlConnection(GetConnectionString()))
                {
                    SqlCommand cmd = new SqlCommand(procName, oConn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    oConn.Open();
                    if (oParams.Count > 0)
                    {
                        foreach (SqlParameter OParam in oParams)
                        {
                            cmd.Parameters.Add(OParam);
                        }
                    }
                    
                    result = cmd.ExecuteNonQuery();
                }
            }
            catch (SqlException ex)
            {
                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    return 0;
                }

                throw ex;
            }
            return result;
        }


        public static int ExecuteDataNonQueryTag(string procName, string id, ArrayList items)
        {
            int result = 1;
          
            try
            {
                using (SqlConnection oConn = new SqlConnection(GetConnectionString()))
                {  
                    SqlCommand cmd = new SqlCommand(procName, oConn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = procName;
                    cmd.Parameters.AddWithValue("@RetailerID", id);

                    SqlParameter oProductId = cmd.Parameters.Add("@ProductId", SqlDbType.VarChar);
                    oProductId.SqlDbType = SqlDbType.VarChar;
                    oProductId.Direction = ParameterDirection.Input;
                    
                    oConn.Open();

                    foreach (object pro in items)
                    {
                        oProductId.Value = pro;
                        cmd.ExecuteNonQuery();

                    }
                    }

                    
                }
            
            
            catch (SqlException ex)
            {
                throw ex;
            }
            return result;
        }
        public static DataSet executeDataset(string procName)
        {

            DataSet ds = new DataSet();
            //int result = 0;
            try
            {
                using (SqlConnection oConn = new SqlConnection(GetConnectionString()))
                {
                    SqlCommand cmd = new SqlCommand(procName, oConn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    oConn.Open();

                    cmd.ExecuteNonQuery();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            return ds;
        }

        public static DataSet ExecuteGridView(string procName, List<SqlParameter> oParams)
        {

            DataSet ds = new DataSet();
            try
            {
                using (SqlConnection oConn = new SqlConnection(GetConnectionString()))
                {
                    SqlCommand cmd = new SqlCommand(procName, oConn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    
                    oConn.Open();
                    if (oParams.Count > 0)
                    {
                        foreach (SqlParameter oParam in oParams)
                        {
                            cmd.Parameters.Add(oParam);
                        }
                    }
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);
                   
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            return ds;
        }

        
    }
}


