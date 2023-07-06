

//1)Write a program to display the below details of a given input string

using System.Runtime.CompilerServices;
using System.Security.Cryptography;
using System.Text;

Console.WriteLine("Enter the string ");
String item = Console.ReadLine();
Console.WriteLine(" 1) The Length of the string is : " + item.Length);
Console.WriteLine(" 2) Enter the charecter that you want to find the index :");
String charecter = Console.ReadLine();
Console.WriteLine(" The index of the charecter is : " + item.IndexOf(charecter));
char[] array1 = item.ToCharArray();
Array.Reverse(array1);
Console.WriteLine(" 3) The reverse of the string is : " + new string(array1));
Console.WriteLine($" 4) The string after appending is : Hai {item} ");
Console.WriteLine(" 5)The last charecter of String is : " + item.Last());
item = item.Replace('a', ' ');
Console.WriteLine("Replaced the charecter a with '_' is : " + item);
Console.WriteLine("Enter the charecter to find the occurance : ");
string searchelement = Console.ReadLine();
int count = 0;
char str = char.Parse(searchelement);
for (int i = 0; i < item.Length; i++)
{
    if (item[i] == str)
    {
        count += 1;
    }
}
Console.WriteLine($"The charecter '{str}' ocuured  '{count}' times in the string ");

//-------------------------------------------------------------------------------------------
 //Done using string builder

Console.WriteLine("Enter the string");
string s = Console.ReadLine();
StringBuilder sb = new StringBuilder(s);
Console.Write(" 1)The length of the string is : " + sb.Length);
char[] array1 = sb.ToString().ToCharArray();
Array.Reverse(array1);


Console.WriteLine(" 2) Enter the charecter that you want to find the index :");
String charecter = Console.ReadLine();
char var = char.Parse(charecter);
Console.WriteLine("The index of the charecter is : ");
for (int i = 0; i < sb.Length; i++)
{
    if (sb[i] == var)
    {
        Console.WriteLine(i);
        break;
    }
    else
    {
        continue;
    }
}
Console.WriteLine(" 3) The reverse of the string is : " + new string(array1));

Console.WriteLine($" 4) The string after appending is : Hai {sb} ");
int size = sb.Length;
Console.WriteLine(" 5)The last charecter of String is : " + sb[size - 1]);
sb = sb.Replace('a', ' ');
Console.WriteLine("Replaced the charecter a with '_' is : " + sb);
Console.WriteLine("Enter the charecter to find the occurance : ");
string searchelement = Console.ReadLine();
int count = 0;
char str = char.Parse(searchelement);
for (int i = 0; i < sb.Length; i++)
{
    if (sb[i] == str)
    {
        count += 1;
    }
}
Console.WriteLine($"The charecter '{str}' ocuured  '{count}' times in the string ");

program to do the below datetime calculation

 //1) Print the current date and time in different formats

DateTime date1 = DateTime.Now;
Console.WriteLine(date1.ToString("MM-dd-yyyy"));
Console.WriteLine(date1.ToString("dd-mm-yyyy"));
Console.WriteLine(date1.ToString("yyyy-mm-dd"));


//2)Find the difference between two dates
Console.WriteLine("Enter the first date :");
String x = Console.ReadLine();
DateTime First_date = DateTime.Parse(x);
Console.WriteLine("Enter the second date :");
String y = Console.ReadLine();
DateTime second_date = DateTime.Parse(y);
var number = second_date - First_date;
int days = number.Days;
Console.WriteLine($"The number of Days between {second_date} and {First_date} are :" + days);

//3)Display Day, Month, Year of a given Date

Console.WriteLine("Enter the date :");
String x = Console.ReadLine();
DateTime date = DateTime.Parse(x);
Console.WriteLine($"The Day of given date is :" + date.ToString("dd"));
Console.WriteLine($"The Month of given date is :" + date.ToString("MM"));
Console.WriteLine($"The Year of given date is :" + date.ToString("yyyy"));


/// 4) To a given Date, add 10 days
Console.WriteLine("Enter the date :");
String x = Console.ReadLine();
DateTime date5 = DateTime.Parse(x);
var days = date5.ToString("dd");
int days1 = int.Parse(days);
Console.WriteLine($"The Day of given date is :");
Console.WriteLine(days1 + 10);


//5)Single Calculate  method, Calculate out add, out sub, out mult, out div

static int Calculate(int a, int b, out int add, out int sub, out int mul, out float div)
{
    mul = a * b;
    div = a / b;
    sub = a - b;
    add = a + b;
    return add;
}

int a = Calculate(10, 20, out int add, out int sub, out int mul, out float div);
Console.WriteLine($"The multiplied value is {0} , added value is {1} ,substrated value is {2}, Divided values is {3}", mul, add, sub, div);
Console.ReadLine();


