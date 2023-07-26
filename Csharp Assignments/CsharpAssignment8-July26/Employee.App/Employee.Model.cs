using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Employee.Model
{
    public class Employee
    {
        public static int Count{ get; set; }

        public static int Id = 1000;
        public string Name { get; set; }
        public int Salary { get; set; }
        public string EmployeeType { get; set; }
        static Employee()
        {
            Count = 0;
        }
        public Employee(string name, int salary)
        {
            name = Name;
            salary=Salary;
            Id += 1;
            Count += 1;
        }
        public void Display()
        {
            Console.WriteLine("The Total Number Of Employee is :  "+Employee.Count);
            Console.WriteLine("The id for the last inserteed employee is " +Id);
        }
      
    }
}

