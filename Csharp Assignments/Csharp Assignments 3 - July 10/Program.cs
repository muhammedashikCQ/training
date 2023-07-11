using System.Xml.Linq;

public class EmployeeManagement
{

    public int EmployeeID;
    public string EmployeeName;
    public double EmployeeSalary;
    public EmployeeManagement(int id)
    {
        EmployeeID = id;
    }
    public EmployeeManagement(int id, string name) : this(id)

    {
        EmployeeName = name;
    }
    public EmployeeManagement(int id, string name, double salary) : this(id, name)
    {
        EmployeeSalary = salary;
    }
    public void display()
    {
        Console.WriteLine("Employee Details :");
        Console.WriteLine("Employee Id : " + EmployeeID);
        Console.WriteLine("Employee Name :" + EmployeeName);
        Console.WriteLine("Employee Salary :" + EmployeeSalary);
    }
    static void Main(string[] args)
    {
        EmployeeManagement employee = new EmployeeManagement(10, "ashik", 250000);
        employee.display();

    }

}


