using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CsharpAssignment5_July_13
{
    public class Employee
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime DateOfJoin { get; set; }
        public string Department { get; set; }
        public double salary { get; set; }
        public char JobType { get;set; }
        public Employee(int ID, string EmployeeName, DateTime JoiningDate1, string department1, double Salary1, char jobtype1)
        {
            int Id = ID;
            Name = EmployeeName;
            DateOfJoin = JoiningDate1;
            Department = department1;
            salary = Salary1;
            JobType = jobtype1;

        }


    }
}



