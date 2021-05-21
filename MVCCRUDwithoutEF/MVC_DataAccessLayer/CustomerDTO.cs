using System;
using System.Collections.Generic;
using System.Text;

namespace MVC_DataAccessLayer
{
    class CustomerDTO
    {
        public int BookID { get; set; }
        public string Title { get; set; }
        public string Author { get; set; }
        public int Price { get; set; }
    }
}
