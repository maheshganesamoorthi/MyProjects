using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace TelecomStore.DataAccessHelper
{
  public  class viewDAHelper
    {
      protected static string GetconnectionString()
        {
            return ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        }
        public static DataSet ExecuteDataSet(string procedure)
        {
            DataSet oDS = new DataSet();
            try
            {
                using (SqlConnection conn = new SqlConnection(GetconnectionString()))
                {
                    SqlCommand cmd = new SqlCommand(procedure, conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(oDS);
              
                }
            }
            catch (SqlException ex)
            {
                throw ex;

            }
            return oDS;


        }
    }

    }

