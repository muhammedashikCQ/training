using Microsoft.Data.SqlClient;
using Microsoft.Identity.Client;
using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace NewConnection
{
    public class BookMyShow
    {
        string connectionString = "server=localhost, 1401;database=BookMyShow;user id=sa;password=Pass@word;" +
    "TrustServerCertificate=true";
        public void GetTicketDetail(int BookingId)
        {
            SqlConnection con =new SqlConnection(connectionString);
            con.Open();
            string query = "GetBookedTicketDetails";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;


            SqlParameter paramId=new SqlParameter();
            paramId.ParameterName = "@BookingId";
            paramId.Value = BookingId;
            paramId.SqlDbType = System.Data.SqlDbType.Int;
            cmd.Parameters.Add(paramId);



            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                for(int i = 0; i < reader.FieldCount; i++) 
                {
                    Console.WriteLine(reader[i]);
                }

            }
            con.Close();
        }

        public void GetSeatInfoByShow(int ShowId)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string query = "GetSeatInfoByShow";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;    
            cmd.Connection = con;
            cmd.CommandType=System.Data.CommandType.StoredProcedure;

            SqlParameter paramId=new SqlParameter();
            paramId.ParameterName = "@ShowId";
            paramId.Value = ShowId;
            paramId.SqlDbType=System.Data.SqlDbType.Int;
            cmd.Parameters.Add(paramId);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                for (int i = 0; i < reader.FieldCount; i++)
                {
                    Console.WriteLine(reader[i]);
                }

            }
            con.Close();
        }
    }
}
