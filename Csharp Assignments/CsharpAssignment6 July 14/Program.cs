using CsharpAssignment6_July_14;

public class program
{
    public static void Main(string[] args)
    {
        Shape object1 = new Triangle(3,5,5,5);
        double CalculatedArea1=object1.CalculateArea();
        Console.WriteLine("The Area of the Triangle with " + object1.NoOfSides + " sides  is  :"+CalculatedArea1);

        Shape object2 = new Square(4, 2);
        double CalculatedArea2 = object2.CalculateArea();
        Console.WriteLine("The Area of the square with  " + object2.NoOfSides + " sides is  :" + CalculatedArea2);

        Shape object3 = new Rectangle(4, 2, 3);
        double CalculatedArea3 = object3.CalculateArea();
        Console.WriteLine("The Area of the Rectangle with  " + object3.NoOfSides + " sides is  :" + CalculatedArea3);

    }
}