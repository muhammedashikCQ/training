//using System;

//public class Class1
//{
//    public static int x { get; set; }
//    public void Display()
//    {
//        x = 12;
//        Console.WriteLine(x);
//        Thread.Sleep(1000);
//        Console.WriteLine(x + 2);
//        Thread.Sleep(1000);
//        Console.WriteLine(x + 3);
//        Thread.Sleep(1000);
//        Console.WriteLine(x + 4);
//        Thread.Sleep(1000);
//        Console.WriteLine(x + 5);
//    }
//    public void Print()
//    {
//        Console.WriteLine("Hi I'm Running");
//        Thread.Sleep(1000);
//        Console.WriteLine("I'm Tired ");
//    }
//    public void test(string x)
//    {
//        Console.WriteLine(x);
//    }

//}
//public class Program1
//{

//    static void Main(string[] args)
//    {
//        Class1 Object2 = new Class1();
//        Task task1 = Task.Run(() =>
//        {
//            Object2.Print();
//        });
//        Console.WriteLine("Main thread starts here");
//        Object2.Display();
//        Task task2 = Task.Run(() =>
//        {
//            Object2.test("Hi I'm from Test method");
//        });
//        Console.WriteLine("Main thread ends here");
//        Console.ReadLine();

//    }

//}
