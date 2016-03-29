using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using TelecomStore.DataAccess;


namespace TelecomStore.BusinessLogic
{
  public  class viewBL
    {
        viewDA oCusDA = new viewDA();
        public DataSet view()
        {

            return oCusDA.GetAll();
        }
    }
}
