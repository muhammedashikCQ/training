using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class StudentDetail
{
    string connectionString = "server=localhost, 1401;database=Class;user id=sa;password=Pass@word;" +
    "TrustServerCertificate=true";

    public void GetStudentDetail()
    {
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        string query = "GetStudentDetails";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        SqlDataReader reader = cmd.ExecuteReader();
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        while (reader.Read())
        {
            for (int i = 0; i < reader.FieldCount; i++)
            {
                Console.WriteLine(reader[i]);
            }
            Console.WriteLine("-------------------------");

        }
        con.Close();
        
    }
    public int InsertStudentDetail(string name, string address, string std,float mark)
    {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string query = "InsertNewStudent";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlParameter paramName = new SqlParameter();
            paramName.ParameterName = "@Name";
            paramName.Value = name;
            paramName.SqlDbType = System.Data.SqlDbType.VarChar;
            paramName.Size = 100;

            SqlParameter paramAddress = new SqlParameter();
            paramAddress.ParameterName = "@Address";
            paramAddress.Value = address;
            paramAddress.SqlDbType = System.Data.SqlDbType.VarChar;
            paramAddress.Size = 100;

            SqlParameter paramClass = new SqlParameter();
            paramClass.ParameterName = "@Class";
            paramClass.Value= std;
            paramClass.SqlDbType = System.Data.SqlDbType.VarChar;
            paramClass.Size= 100;
            
            SqlParameter paramMark = new SqlParameter();
            paramMark.ParameterName = "@Mark";
            paramMark.Value = mark;
            paramMark.SqlDbType = System.Data.SqlDbType.Float;
            paramMark.Size = 10;


            SqlParameter paramReturn = new SqlParameter();
            paramReturn.SqlDbType = System.Data.SqlDbType.Int;
            paramReturn.Direction = System.Data.ParameterDirection.ReturnValue;


            cmd.Parameters.Add(paramName);
            cmd.Parameters.Add(paramAddress);
            cmd.Parameters.Add(paramClass);
            cmd.Parameters.Add(paramMark);
            cmd.Parameters.Add(paramReturn);
            cmd.ExecuteNonQuery();
            int returnvalue = (int)paramReturn.Value;
            
             return returnvalue;
        con.Close();




    }
  }

