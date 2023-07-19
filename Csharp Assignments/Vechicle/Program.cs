using Travel;

public class Program
{
    public static void Main(string[] args)
    {
        Vechicle object1 = new Car("Mustang","Red" ,3);
        int Result1 = object1.PersonsAllowed();
        Console.WriteLine("The Seating capacity is :" + Result1);


        Vechicle object2 = new Bike("yamaha", "Blue", 3);
        int Result2 = object2.PersonsAllowed();
        Console.WriteLine("The Seating capacity is :" + Result2);

        Vechicle object3 = new Vechicle("Vechicle", "yellow", 3);
        int Result3 = object3.PersonsAllowed();
        Console.WriteLine("The Seating capacity is :" + Result3);
    }
}