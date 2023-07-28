using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IsWordCount
{
    public class Output
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter the string ");
            string inputs = Console.ReadLine();
            Console.WriteLine("Enter the word that you want to find the occurance");
            string words=Console.ReadLine();
            int result = inputs.GetwordCount(words);
            Console.WriteLine(result);
        }
   }
}

