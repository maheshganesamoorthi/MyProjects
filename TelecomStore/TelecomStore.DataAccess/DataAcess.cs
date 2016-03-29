using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using TelecomStore.DataAccess.Helper;
using TelecomStore.BusinessObjects;


namespace TelecomStore.DataAccess
{
    public class DataAcess
    {
        public bool InsertUser(User oUser)
        {
            bool res = false;
            try
            {
                //    SqlParameterCollection oSQlParams = new SqlCommand().Parameters;
                //    //SqlParameterCollection oSQlParams = (SqlParameterCollection)typeof(SqlParameterCollection).GetConstructor(BindingFlags.NonPublic | BindingFlags.Instance, null, Type.EmptyTypes, null).Invoke(null);
                List<SqlParameter> oParams = new List<SqlParameter>();

                SqlParameter oFirst = new SqlParameter("@firstname", oUser.FirstName);
                oFirst.SqlDbType = SqlDbType.VarChar;
                oFirst.Direction = ParameterDirection.Input;
                SqlParameter oLast = new SqlParameter("@Lastname", oUser.LastName);
                oLast.SqlDbType = SqlDbType.VarChar;
                oLast.Direction = ParameterDirection.Input;
                SqlParameter oAddress = new SqlParameter("@Address", oUser.Address);
                oAddress.SqlDbType = SqlDbType.VarChar;
                oAddress.Direction = ParameterDirection.Input;
                SqlParameter oPhone = new SqlParameter("@Phone", oUser.Phone);
                oPhone.SqlDbType = SqlDbType.VarChar;
                oPhone.Direction = ParameterDirection.Input;
                SqlParameter oEmail = new SqlParameter("@Email", oUser.Email);
                oEmail.SqlDbType = SqlDbType.VarChar;
                oEmail.Direction = ParameterDirection.Input;
                SqlParameter SecureQues = new SqlParameter("@secques", oUser.SecureQues);
                SecureQues.SqlDbType = SqlDbType.VarChar;
                SecureQues.Direction = ParameterDirection.Input;
                SqlParameter SecureAns = new SqlParameter("@secans", oUser.SecureAns);
                SecureAns.SqlDbType = SqlDbType.VarChar;
                SecureAns.Direction = ParameterDirection.Input;
                SqlParameter Pwd = new SqlParameter("@password", oUser.Pwd);
                Pwd.SqlDbType = SqlDbType.VarChar;
                Pwd.Direction = ParameterDirection.Input;
                SqlParameter oRole = new SqlParameter("@Role", oUser.Role);
                oRole.SqlDbType = SqlDbType.VarChar;
                oRole.Direction = ParameterDirection.Input;
                oParams.Add(oFirst);
                oParams.Add(oLast);
                oParams.Add(oAddress);
                oParams.Add(oPhone);
                oParams.Add(oEmail);
                oParams.Add(SecureQues);
                oParams.Add(SecureAns);
                oParams.Add(Pwd);
                oParams.Add(oRole);


                int execRes = SqlHelper.ExecuteDataNonQuery("sp_InsertUser", oParams);
                if (execRes > 0)
                    res = true;
                else
                    res = false;
            }
            catch (ArgumentException ex)
            {
                throw ex;
            }
            return res;
        }

        public DataSet ViewUser(string view)
        {
            DataSet ds = new DataSet();
            ds = SqlHelper.executeDataset(view);
            return ds;
        }

        public DataSet viewgrid(string proName, string role)
        {
            DataSet ds = new DataSet();
            List<SqlParameter> oParams1 = new List<SqlParameter>();

            SqlParameter Role = new SqlParameter("@role", role);
            Role.SqlDbType = SqlDbType.VarChar;
            Role.Direction = ParameterDirection.Input;
            oParams1.Add(Role);
            ds = SqlHelper.ExecuteGridView(proName, oParams1);
            return ds;
        }
        public bool DeleteUser(string procName, int userid)
        {
            bool res = false;
            try
            {

                List<SqlParameter> oParams = new List<SqlParameter>();

                SqlParameter oID = new SqlParameter("@userid", userid);
                oID.SqlDbType = SqlDbType.VarChar;
                oID.Direction = ParameterDirection.Input;

                oParams.Add(oID);



                int execRes = SqlHelper.ExecuteDataNonQuery(procName, oParams);
                if (execRes > 0)
                    res = true;
                else
                    res = false;
            }
            catch (ArgumentException ex)
            {
                throw ex;
            }
            return res;
        }

        public DataSet GetUpdateDetails(string procName,string id)
        {
            DataSet ds = new DataSet();
            List<SqlParameter> oParams1 = new List<SqlParameter>();

            SqlParameter uid = new SqlParameter("@userid",id);
            uid.SqlDbType = SqlDbType.VarChar;
            uid.Direction = ParameterDirection.Input;
            oParams1.Add(uid);
            ds = SqlHelper.ExecuteGridView(procName, oParams1);
            return ds;
        }
        public bool UpdateUser(string procName, int userid, string firstname, string lastname, string Address, string Phone, string Email)
        {
            bool res = false;
            try
            {

                List<SqlParameter> oParams = new List<SqlParameter>();

                SqlParameter oID = new SqlParameter("@id", userid);
                oID.SqlDbType = SqlDbType.VarChar;
                oID.Direction = ParameterDirection.Input;
                SqlParameter oFirst = new SqlParameter("@firstname", firstname);
                oFirst.SqlDbType = SqlDbType.VarChar;
                oFirst.Direction = ParameterDirection.Input;
                SqlParameter oLast = new SqlParameter("@Lastname", lastname);
                oLast.SqlDbType = SqlDbType.VarChar;
                oLast.Direction = ParameterDirection.Input;
                SqlParameter oAddress = new SqlParameter("@Address", Address);
                oAddress.SqlDbType = SqlDbType.VarChar;
                oAddress.Direction = ParameterDirection.Input;
                SqlParameter oPhone = new SqlParameter("@Phone", Phone);
                oPhone.SqlDbType = SqlDbType.VarChar;
                oPhone.Direction = ParameterDirection.Input;
                SqlParameter oEmail = new SqlParameter("@Email", Email);
                oEmail.SqlDbType = SqlDbType.VarChar;
                oEmail.Direction = ParameterDirection.Input;
                oParams.Add(oID);
                oParams.Add(oFirst);
                oParams.Add(oLast);
                oParams.Add(oAddress);
                oParams.Add(oPhone);
                oParams.Add(oEmail);



                int execRes = SqlHelper.ExecuteDataNonQuery(procName, oParams);
                if (execRes > 0)
                    res = true;
                else
                    res = false;
            }
            catch (ArgumentException ex)
            {
                throw ex;
            }
            return res;
        }

        public DataSet Tag(string tag)
        {
            DataSet ds = new DataSet();
            ds = SqlHelper.executeDataset(tag);
            return ds;

        }

       

        public DataSet viewgridtag(string proName, string model, string id)
        {
            DataSet ds = new DataSet();
            List<SqlParameter> oParams1 = new List<SqlParameter>();

            SqlParameter Model = new SqlParameter("@modelname", model);
            Model.SqlDbType = SqlDbType.VarChar;
            Model.Direction = ParameterDirection.Input;
            SqlParameter rid = new SqlParameter("@retailerID", id);
            rid.SqlDbType = SqlDbType.VarChar;
            rid.Direction = ParameterDirection.Input;
            oParams1.Add(Model);
            oParams1.Add(rid);
            ds = SqlHelper.ExecuteGridView(proName, oParams1);
            return ds;
        }

        public bool CheckTag(string procName, String id, ArrayList items)
        {
            bool res = false;
           
            int execRes = SqlHelper.ExecuteDataNonQueryTag(procName,id,items);
            if (execRes > 0)
                res = true;
            else
                res = false;
            return res;
        }

        

        public DataSet viewgridUntag(string proName, string id)
        {
            DataSet ds = new DataSet();
            List<SqlParameter> oParams1 = new List<SqlParameter>();

            SqlParameter Model = new SqlParameter("@RetailerID", id);
            Model.SqlDbType = SqlDbType.VarChar;
            Model.Direction = ParameterDirection.Input;
            oParams1.Add(Model);
            ds = SqlHelper.ExecuteGridView(proName, oParams1);
            return ds;
        }
        public int Change(string pro, string id, string pwd)
        {
            int res;
            List<SqlParameter> oParams2 = new List<SqlParameter>();

            SqlParameter uid = new SqlParameter("@id",id);
            uid.SqlDbType = SqlDbType.VarChar;
            uid.Direction = ParameterDirection.Input;
            SqlParameter npwd = new SqlParameter("@Newpwd",pwd);
            npwd.SqlDbType = SqlDbType.VarChar;
            npwd.Direction = ParameterDirection.Input;
            oParams2.Add(uid);
            oParams2.Add(npwd);
            res = SqlHelper.ExecuteDataNonQuery(pro, oParams2);
            return res;

        }

        
    }
}