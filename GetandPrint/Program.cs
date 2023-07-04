// See https://aka.ms/new-console-template for more information
using System.ComponentModel;

Console.WriteLine("Enter your name");
string name = Console.ReadLine();
Console.WriteLine( "Ente your Age");
int.TryParse(Console.ReadLine(),out int Age);
Console.WriteLine("Enter your Class");
string clas = Console.ReadLine();
Console.WriteLine("Enter the Division -> A or B");
char.TryParse(Console.ReadLine(), out char div);
Console.WriteLine("Enter if you have any disabilities True or False");
string dis = Console.ReadLine();
bool result = Convert.ToBoolean(dis);
Console.WriteLine("_________________");
Console.WriteLine("Your Details are Given Below");
Console.WriteLine("Name :" + name);
Console.WriteLine("Age :" + Age);
Console.WriteLine("Class :" + clas);
Console.WriteLine("Division :" + div);
Console.WriteLine("Disabilities :" + dis);

