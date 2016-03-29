using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TelecomStore.BusinessObjects
{
    public class ProductSelection
    {
        public int productCode;
        public string productName;
        public int price;

        public int ProductCode
        {
            set { productCode = value; }
            get { return productCode; }
        }

        public string ProductName
        {
            set { productName = value; }
            get { return productName; }
        }

        public int Price
        {
            set { price = value; }
            get { return price; }
        }

    }
}
