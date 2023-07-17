using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CsharpAssignment6_July_14
{
    public class Rectangle : Shape
    {
        public int Length { get; set; }
        public int Breadth { get; set; }
        

        public Rectangle(int Sides, int side1, int side2) : base(Sides)
        {
            NoOfSides = Sides;
            Length = side1;
            Breadth = side2;

        }
        public override double CalculateArea()
        {
            double n = (Length* Breadth);
           
            return n;
        }


    }
}
