using System;
using System.Data;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;

namespace MVC_DataAccessLayer
{
    public class DL_Book
    {
        private readonly string _connectionString = "Server=(local)\\sqlexpress;Database=BooksDB;Trusted_Connection=True;MultipleActiveResultSets=True;";
        public object GetCustomers(string title)
        { 
                CustomerDTO customer = new CustomerDTO();
                using (SqlConnection sqlConnection = new SqlConnection(_connectionString))
                {
                   
                    string query = "SELECT * FROM Books WHERE Title='" + title + "'";

                SqlCommand cmd = new SqlCommand(query, sqlConnection)
                {
                    CommandType = CommandType.Text
                };
                sqlConnection.Open();
                SqlDataReader reader = cmd.ExecuteReader(); 
                if (reader.Read())
                {
                    customer.BookID = Convert.ToInt32(reader["BookID"].ToString());
                    customer.Title = reader["Title"].ToString();
                    customer.Author = reader["Author"].ToString();
                    customer.Price = Convert.ToInt32(reader["Price"].ToString());
                }
                
                    
                }

                return customer; 
        }
    }  
}
   
  
