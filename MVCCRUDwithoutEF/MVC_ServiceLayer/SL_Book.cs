using System;
using MVC_DataAccessLayer;

namespace MVC_ServiceLayer
{
    public class SL_Book
    {
        private readonly DL_Book customer = new DL_Book();

        public object getCustomers(string title)
        {
          return  customer.GetCustomers(title); 
        }

    }
}
