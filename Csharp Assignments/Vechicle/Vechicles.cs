using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Channels;
using System.Threading.Tasks;

namespace Travel
{
    public class Vechicle
    {
        public string Name { get; set; }
        private protected string Colour ="ashik"; 
        public int SeatingCpapcity { get; set; }
        protected int Values{get;set;}
        public Vechicle(string name,string colour,int seats) 
        {
            Name = name;
            Colour = colour;
            SeatingCpapcity = seats;
        }
        public virtual int  PersonsAllowed()
        {
            return SeatingCpapcity;
        }
    }
    public class Car : Vechicle
    {
        public Car(string name,string colour,int seats):base(name,colour,seats) 
        {
            Name=name;
            Colour = colour;
            Colour = "asssss";
            SeatingCpapcity = seats;
        }
        public override int PersonsAllowed()
        {
            return SeatingCpapcity+1;
        }
    }
    public class Bike : Vechicle
    {
        public Bike(string name, string colour, int seats) : base(name, colour, seats)
        {
            Name = name;
            Colour = colour;
            SeatingCpapcity = seats;
        }
        public override int PersonsAllowed()
        {
            return SeatingCpapcity + 2;
        }
    }
}
