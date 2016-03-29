using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TelecomStore.DataAccess;
using System.Data;

using TelecomStore.BusinessObjects;

namespace TelecomStore.BusinessLogic
{
    public class CustBL
    {
         
        CustDA oCompDA = new CustDA();
        public DataSet view()
        {
            return oCompDA.GetAll();
        }
        public DataSet viewDetails(CustBO bo)
        {
            return oCompDA.ViewDetails(bo);
        }
        //public DataSet UpdateComplementary(CustBO Comp)
        //{
        //    return oCompDA.Update(Comp);
        //}
        public DataSet update(CustBO package)
        {
            return oCompDA.Update(package);

        }
        //public bool add(CustBO comp)
        //{
        //    try
        //    {
        //        if (comp != null)
        //        {
        //            CustDA oCompl = new CustDA();

        //        }
        //        return true;
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }
        //}
        public DataSet AddDetails(CustBO oComp)
        {
            return oCompDA.AddDetails(oComp);
        }

      
        public DataSet Delete(CustBO Comp)
        {
            return oCompDA.Delete(Comp);
        }
        //public DataTable delete(string package)
        //{
        //    return oCompDA.delete(package);

        //}

    }
}
