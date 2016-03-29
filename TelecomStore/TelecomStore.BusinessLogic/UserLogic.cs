using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Configuration;
using TelecomStore.BusinessObjects;
using TelecomStore.DataAccess;
using System.Collections;
namespace TelecomStore.BusinessLogic
{
    public class UserLogic
    {

        DataAcess oAccess = new DataAcess();
        

        public bool addUser(User oUser1)
        {
           
            if(oAccess.InsertUser(oUser1))
            
                return true;

                else
                return false;

            
        }

        public DataSet viewuser(string viewgrid)
        {
            DataSet ds = new DataSet();

            ds = oAccess.ViewUser(viewgrid);
            return ds;
            
            
        }

        public DataSet viewgrid(string proName,string role)
        {
            DataSet ds = new DataSet();

            ds = oAccess.viewgrid(proName,role);
            return ds;


        }

        public bool deleteuser(string proName, int userid)
        {
            
            bool result = false;
            result = oAccess.DeleteUser(proName, userid);
            return result;


        }

        public DataSet GetDetails(string proc,string id)
        {
            DataSet ds = new DataSet();
            ds = oAccess.GetUpdateDetails(proc,id);
            return ds;
        }
        public bool updateuser(string proName, int userid,string firstname,string lastname,string Address,string Phone,string Email)
        {

            bool result = false;
            result = oAccess.UpdateUser(proName, userid, firstname, lastname, Address, Phone, Email);
            return result;


        }

        public DataSet tag(string tag)
        {
            DataSet ds = new DataSet();

            ds = oAccess.Tag(tag);
            return ds;


        }

       

        public DataSet viewgridTag(string proName, string model, string id)
        {
            DataSet ds = new DataSet();

            ds = oAccess.viewgridtag(proName, model,id);
            return ds;


        }

        public bool checkTag(string procName, string id,ArrayList itemstoAdd)
        {
            bool result = false;
            result = oAccess.CheckTag(procName, id,itemstoAdd);
            return result;
 
        }

        public bool checkUnTag(string procName, string id, ArrayList itemstoDelete)
        {
            bool result = false;
            result = oAccess.CheckTag(procName, id, itemstoDelete);
            return result;

        }

        public DataSet viewgridUnTag(string proName, string id)
        {
            DataSet ds = new DataSet();

            ds = oAccess.viewgridUntag(proName, id);
            return ds;


        }
        public int pwd(string proc, string userid, string newpwd)
        {

            int res;
            res=oAccess.Change(proc,userid,newpwd);
            return res;
        }

        
    }

}