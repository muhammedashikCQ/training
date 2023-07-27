using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace MyGenericComparer
{
    public class Mainclass
    {

        static void Main(string[] args)
        {
            MyGenericComparer<int> object1= new MyGenericComparer<int>();
            object1.Largest(9,10);
        }
      
  
    }
}
