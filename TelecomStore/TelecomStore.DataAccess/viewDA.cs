using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using TelecomStore.DataAccessHelper;

namespace TelecomStore.DataAccess
{
   public class viewDA
    {
       public DataSet GetAll()
       {
           return viewDAHelper.ExecuteDataSet("sp_rewardRetailer");
       }

    }
}
