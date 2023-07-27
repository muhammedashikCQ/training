using EmployeeApp;
using EmployeeModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeApp
{
    public class EmployeeApp
    {

        static void Main(string[] args)
        {
            Employee object1 = new Employee("John doe", 15000);
            Employee object2 = new Employee("Liam Smith", 20000);
            Employee object3 = new Employee("Mary James", 15000);
            object3.Display();
        }

    }
}
