using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CsharpAssignment6_July_14
{
    public class Square : Shape
    {
        public int LengthOfSide { get; set; }
     

        public Square(int Sides, int side1) : base(Sides)
        {
            NoOfSides = Sides;
            LengthOfSide = side1;
        
        }
        public override double CalculateArea()
        {
            double s = LengthOfSide * LengthOfSide;
            return s;
        }

    }
}
