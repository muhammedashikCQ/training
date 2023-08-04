using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AsyncClass
{
    public class AsyncClass
    {
        public async static Task Display()
        {
            await Task.Run(() =>
            {
                Console.WriteLine("Hi I'm from Display Method");
                for (int i = 0; i < 6; i++)
                {
                    Console.WriteLine(i);
                    Thread.Sleep(1000);
                }

            });
        }
        public async static Task Print()
        {
            await Task.Run(() =>
            {
                Console.WriteLine("I'm from Print Method");
                for (int i = 0; i < 6; i++)
                {
                    Console.WriteLine(i);
                    Thread.Sleep(1000);
                }

            });
        }
    }
    public class Program
    {
        static async Task Main(string[] args)
        {
            await AsyncClass.Display();
            await AsyncClass.Print();

        }
    }
}
