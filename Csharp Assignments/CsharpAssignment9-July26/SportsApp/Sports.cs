
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SportsApp
{
    public class Sports
    {
        public char input { get; set; }
        public Sports(char Charecter) 
        {
            input=Charecter;

            try
            {
                if(input =='c')
                {
                    Console.WriteLine("Cricket");
                }
                else if(input =='f')
                {
                    Console.WriteLine("Football");

                }
                else if (input =='h') 
                {
                    Console.WriteLine("Hockey");
                }
                else if(input=='t')
                {
                    Console.WriteLine("Tennis");
                }
                else if(input =='b')
                {
                    Console.WriteLine("Badminton");
                }
                else
                {
                   throw new InvalidUserInputException("Invalid Input");
                }
            }
            catch(InvalidUserInputException ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

    }
    public class InvalidUserInputException : Exception
    {
        public InvalidUserInputException(string message):base(message) 
        { 

        }
     
    }
}
