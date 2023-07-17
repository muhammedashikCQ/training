using CsharpAssignment5_July_13;
using System.Diagnostics;
using System.Diagnostics.Contracts;




public interface IBonusCalculator
{
    double CalculateBonus(Employee employee);

}
public class PermanantEmployeeBonusCalculator : IBonusCalculator
{
    public double CalculateBonus(Employee employee)
    {
        return (employee.salary * 20) / 100;
    }
}
public class ContractEmployeeBonusCalculator : IBonusCalculator
{
    public double CalculateBonus(Employee employee)
    {
        return (employee.salary * 15) / 100;
    }
}
public class program
{
    public static void Main(string[] args)
    {
        Employee employee = new Employee(1, "Ashik", new DateTime(2023, 07, 01), "Developer", 200000, 'P');
        IBonusCalculator bonus = null;
        if (employee.JobType == 'P')
        {
            bonus = new PermanantEmployeeBonusCalculator();

        }
        else if (employee.JobType == 'C')
        {
            bonus = new ContractEmployeeBonusCalculator();

        }
        else
        {
            Console.WriteLine("you entered wrong key");
        }
        double Amount = bonus.CalculateBonus(employee);
        Console.WriteLine("The Bonus of " + employee.Name +" "+"is  : " + Amount);

    }

}