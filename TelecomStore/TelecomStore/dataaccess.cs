using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace TelecomStore
{
    public class dataaccess
    {
        public DataTable getdata(string role)
        {
            SqlConnection con = new SqlConnection("Data Source=INCHNILPDB02;User ID=m97group1;Password=m97group1");
            DataTable dt = new DataTable();
            con.Open();            
            SqlCommand cmd = new SqlCommand("sp_rolename", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@role", SqlDbType.VarChar).Value = role;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            return dt;
        }
    }
}