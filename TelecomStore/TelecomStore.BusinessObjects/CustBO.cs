using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TelecomStore.BusinessObjects
{
    public class CustBO
    {
        private string name;
        private string add;
        private long mobno;
        private string mail;
        private int ID;

        public string Name
        {
            set
            {
                name = value;
            }
            get
            {
                return name;
            }
        }

        public string Address
        {
            set
            {
                add = value;
            }
            get
            {
                return add;
            }
        }
              public long Contactno
        {
            set
            {
                 mobno= value;
            }
            get
            {
                return mobno;
            }
        }
              public string EmailId
              {
                  set
                  {
                      mail = value;
                  }
                  get
                  {
                      return mail;
                  }
              }
              public int Id
              {
                  set
                  {
                      ID = value;
                  }
                  get
                  {
                      return ID;
                  }
        
        
        
        
        
        }
    }
}