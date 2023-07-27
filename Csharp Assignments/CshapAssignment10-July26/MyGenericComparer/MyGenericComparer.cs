using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Diagnostics.Contracts;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyGenericComparer
{
   public class MyGenericComparer<T>
    {
      
        public void Largest(T val1,T val2)
        {
            if (val1.Equals(val2))
            {
                Console.WriteLine("Both the numbers are equal");
            }
            else
            {
                int value1=int.Parse(val1.ToString());
                int value2=int.Parse(val2.ToString());
                if(value1>value2)
                {
                    Console.WriteLine("The largest number is :" + value1);
                }
                else 
                {
                    Console.WriteLine("The Largest Number is :" + value2);
                }
            }

        }
    }


}
