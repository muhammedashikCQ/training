using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CsharpAssignment6_July_14
{
    public abstract class Shape
    {
        public int NoOfSides { get; set; }
        public int DisplayNoOfSides()
        {
            return 0;
        }
        public Shape(int Sides)
        {
            NoOfSides = Sides;
        }
        public abstract double CalculateArea();
    }
    
}
