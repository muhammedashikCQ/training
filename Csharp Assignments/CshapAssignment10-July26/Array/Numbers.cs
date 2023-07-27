using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Array
{
    public class Numbers
    {
        public int[] numberArray {  get; set; }
        public List<int> numberList { get; set; } = new List<int>();
        public Numbers(int[] numberArrays)
        {
            numberArray = numberArrays;
           foreach (int i in numberArray)
            {
                
                numberList.Add(i*2);
            }
        }
        public void Display()
        {
            foreach (int i in numberList)
            {
                Console.WriteLine(i);
            }

        }
    }
}
