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
        private static int count { get; set; }
        public string Id { get;private set; }
        public string Name { get; set; }
        public int Salary { get; set; }
        public string EmployeeType { get; set; }
        static Employee()
        {
            count = 0;
        }
        public Employee(string name, int salary)
        {
            Name = name;
            Salary = salary;
            count += 1;
            Id = "Emp" + (count+1000);
        }
        public void Display()
        {
            Console.WriteLine("The Total Number Of Employee is :  " + count);
        }

    }
}
