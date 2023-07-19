using System.Drawing;
using System.Xml.Linq;
using Travel;

public class vechicles
{

    static void Main(string[] args)
    {
        
        Vechicle object4 = new Car("BMW", "White", 5);
        int Result4 = object4.PersonsAllowed();
        Console.WriteLine("The Seating capacity is :" + Result4);
    }
    public class Flight:Vechicle
    {
        public Flight(string name, string colour, int seats):base(name, colour, seats)
        {
            Values = 10;
            name = "ashik";
        }
       
    }
}
     
    
