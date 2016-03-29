using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TelecomStore.BusinessObjects
{
    public class OrderBO
    {
        public int selected_cid;
        public string selected_mname;
        public int amount;
        public int orderid;
        public string orderStatus;
        public int Selected_cid
        {
            get { return selected_cid; }
            set { selected_cid = value; }
        }
        public string Selected_mname
        {
            get { return selected_mname; }
            set { selected_mname = value; }
        }
        public int Amount
        {
            get { return amount; }
            set { amount = value; }
        }
        public int OrderID
        {
            get { return orderid; }
            set { orderid = value; }
        }
        public string OrderStatus
        {
            get { return orderStatus; }
            set { orderStatus = value; }
        }
    }
}
