using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Student
{
 
    public class StudentDetail
    {
        string connectionString = "server=localhost, 1401;database=Class;user id=sa;password=Pass@word;" +
        "TrustServerCertificate=true";

        public Student GetStudentDetail(int Id)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string query = "GetStudentDetails";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;

            SqlParameter paramId = new SqlParameter();
            paramId.ParameterName = "@id";
            paramId.Value = Id;
            paramId.SqlDbType = System.Data.SqlDbType.Int;
            cmd.Parameters.Add(paramId);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader = cmd.ExecuteReader();

            Student returnObj = new Student();
            if (reader.Read())
            {
                returnObj.name = reader["Name"].ToString();
                returnObj.address = reader["Address"].ToString();
                returnObj.std = reader["class"].ToString();
                returnObj.mark =(decimal) reader["Mark"];
                returnObj.Id = Id;
               
            }

            return returnObj;
            con.Close();

        }
        public int InsertStudentDetail(Student student)
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
            paramName.Value = student.name;
            paramName.SqlDbType = System.Data.SqlDbType.VarChar;
            paramName.Size = 100;

            SqlParameter paramAddress = new SqlParameter();
            paramAddress.ParameterName = "@Address";
            paramAddress.Value = student.address;
            paramAddress.SqlDbType = System.Data.SqlDbType.VarChar;
            paramAddress.Size = 100;

            SqlParameter paramClass = new SqlParameter();
            paramClass.ParameterName = "@Class";
            paramClass.Value = student.std;
            paramClass.SqlDbType = System.Data.SqlDbType.VarChar;
            paramClass.Size = 100;

            SqlParameter paramMark = new SqlParameter();
            paramMark.ParameterName = "@Mark";
            paramMark.Value = student.mark;
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
            con.Close();
            int returnvalue = (int)paramReturn.Value;
            return returnvalue;



        }

    }
}
