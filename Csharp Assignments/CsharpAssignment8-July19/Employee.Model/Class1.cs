namespace Employee.Model
{
    public class Employee
    {
        public static int Id { get; set; }
        public static string Name { get; set; }
        public static int Salary { get; set; }
        static Employee()
        {
            Id = 1;
            Name = "ashik";
            Salary = 1000;
        }
        static void Main(string[] args)
        {
            Console.WriteLine(Employee.Id);
        }
    }
}   

