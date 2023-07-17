using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CsharpAssignment6_July_14
{
   
        public class Triangle : Shape
        {
            public int LengthOfSide1 { get; set; }
            public int LengthOfSide2 { get; set; }
            public int LengthOfSide3 { get; set; }

            public Triangle(int Sides, int sides1, int side2, int side3) : base(Sides)
            {
                NoOfSides = Sides;
                LengthOfSide1 = sides1;
                LengthOfSide2 = side2;
                LengthOfSide3 = side3;
            }
            public override double CalculateArea()
            {
                double s = (LengthOfSide1 + LengthOfSide2 + LengthOfSide3) / 2;
                return Math.Sqrt(s * (s - LengthOfSide1) * (s - LengthOfSide2) * (s - LengthOfSide3));
            }

        
        }
}
