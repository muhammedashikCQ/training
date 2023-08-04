using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace ThreadTest
{
    public class NewClass
    {
        public static int x { get; set; }
        public void Display()
        {
            x = 12;
            Console.WriteLine(x);
            Thread.Sleep(1000);
            Console.WriteLine(x + 2);
            Thread.Sleep(1000);
            Console.WriteLine(x + 3);
            Thread.Sleep(1000);
            Console.WriteLine(x + 4);
            Thread.Sleep(1000);
            Console.WriteLine(x + 5);

        }
        public void Print()
        {
            Console.WriteLine("Hi I'm from PrintMethod");
            Thread.Sleep(1000);
            Console.WriteLine("Hi I'm also from PrintMethod");
        }
        public void test(string x)
        {
            Console.WriteLine(x);
        }

    }
    public class program
    {
        static void Main(string[] args)
        {

            NewClass object1 = new NewClass();
            Thread NewThread = new Thread(object1.Print);
            NewThread.Start();
            Console.WriteLine("Main thread starts here");
            object1.Display();
            Thread NewThread2 = new Thread(() => object1.test("Hi 'm from Test Method"));
            NewThread2.Start();
            Console.WriteLine("Main thread ends here");
            Console.ReadLine();

        }

    }

}
