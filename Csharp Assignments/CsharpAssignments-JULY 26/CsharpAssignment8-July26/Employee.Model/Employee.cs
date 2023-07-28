using EmployeeModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeModel
{
    public class Employee
    {
        public static int Count { get; set; }
        private string Id = "Emp1000";
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
            salary = Salary;
            Count += 1;
            int x = int.Parse(Id.Substring(3));
            x += 1;
            Id = "Emp" + x;
        }
        public void Display()
        {
            Console.WriteLine("The Total Number Of Employee is :  " + Employee.Count);
        }

    }
}
