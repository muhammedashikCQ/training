using RepositoryPattern;

public class program
{
    static void Main(string[] args)
    {
        CustomerRepository object1=new CustomerRepository();
        Customer object2 = new Customer(1,"ashik");
        int x = object1.Add(object2);
        Console.WriteLine(x);
    }
}