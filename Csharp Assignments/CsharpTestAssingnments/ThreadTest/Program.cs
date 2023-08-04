//using System;

//class MainClass
//{
//    public static void DoSomeHeavyLifting()
//    {
//        Console.WriteLine("I'm lifting a truck!!");
//        Thread.Sleep(1000);
//        Console.WriteLine("Tired! Need a 3 sec nap.");
//        Thread.Sleep(1000);
//        Console.WriteLine("1....");
//        Thread.Sleep(1000);
//        Console.WriteLine("2....");
//        Thread.Sleep(1000);
//        Console.WriteLine("3....");
//        Console.WriteLine("I'm awake.");
//    }
//    public static void DoSomething()
//    {
//        Console.WriteLine("Hey! DoSomething here!");
//        for (int i = 0; i < 20; i++)
//        {
//            Console.WriteLine(i);
//        }
//        Console.WriteLine("I'm done.");
//    }
//}

//public class Program
//{
//    static void Main(string[] args)
//    {
//        Console.WriteLine("Main thread starts here.");
//        Thread backgroundThread = new Thread(new ThreadStart(MainClass.DoSomeHeavyLifting));
//        backgroundThread.Start();
//        MainClass.DoSomething();
//        Console.WriteLine("Main thread ends here.");
//        Console.ReadKey();

//    }
//}

