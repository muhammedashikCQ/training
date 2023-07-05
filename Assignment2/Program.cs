// See https://aka.ms/new-console-template for more information

// 1) Print first 20 numbers using for loop

//Console.WriteLine("First 20 numbers are ");
//for (int i=1;i<=20;i++)
//{

//    Console.WriteLine(i);
//}

//  2) Print odd numbers less than 50 using while loop

//Console.WriteLine("The odd numbers less than 50 are listed below:");
//int i = 1;
//while(i<=50)
//{
//    if(i%2!=0)
//    {
//        Console.WriteLine(i);
//    }
//    i++;
//}

// 3) Large amount 3 numbers

//Console.WriteLine("Enter the first number :\n ");
//int.TryParse(Console.ReadLine(), out int number1);
//Console.WriteLine("Enter the second number :\n ");
//int.TryParse(Console.ReadLine(),out int number2);
//Console.WriteLine("Enter the third number :\n ");
//int.TryParse(Console.ReadLine(), out int number3);
//if (number1> number2)
//{
//	if (number1>number3)
//	{
//        Console.WriteLine("The largest number is :"+number1);
//    }
//    else
//    {
//        Console.WriteLine( "The largest number is :"+number3);
//    }
//}
//else
//{
//    if(number2 > number3)                                                                    
//    {
//        Console.WriteLine("The largest number is :"+number2);
//    }
//    else
//    {
//        Console.WriteLine("The largest number is :" + number3);

//    }
//}

// 4) Reverse of a number

//Console.WriteLine("Enter the number to reverse :");
//int.TryParse(Console.ReadLine(), out int number);
//int temp = number, reverse = 0;
//while (temp != 0)
//{
//    int remainder = temp % 10;
//    reverse = reverse * 10 + remainder;
//    temp = temp / 10;

//}
//Console.WriteLine("The reversed number is :" + reverse);


// 5) Sum of the digits of a number


//Console.WriteLine("Enter the number");
//int.TryParse(Console.ReadLine(), out int number);
//int temp = number, sum = 0;
//while (temp != 0)
//{
//    int digit = temp % 10;
//    sum = sum + digit;
//    temp /= 10;
//}
//Console.WriteLine("The sum of digits is :" + sum);

// 6) Sum of the squares of the digits of a number

//Console.WriteLine("Enter the number");
//int.TryParse(Console.ReadLine(), out int number);
//int temp = number, sum = 0;
//while (temp != 0)
//{
//    int digit = temp % 10;
//    sum = sum + (digit*digit);
//    temp /= 10;
//}
//Console.WriteLine("The sum of squares of digits is :" + sum);

// 7) Check prime number

Console.WriteLine("Enter the number");
int.TryParse(Console.ReadLine(), out int number);
int temp = 0;
if(number > 1)
{
    for (int i = 2; i < number / 2; i++)
    {
        if (number % i == 0)
        {
            temp += 1;
        }
    }
    if (temp == 0)
    {
        Console.WriteLine("The number is prime");
    }
    else
    {
        Console.WriteLine("The number is not prime");
    }

}
else
{
    Console.WriteLine("Enter number greater than 1 ");
}

// 8)Print all prime numbers below 100
//Console.WriteLine("the prime numbers below 100");
//int count=0;
//for (int i = 1; i <=100; i++)
//{
//    count = 0;
//    for (int j = 1; j <= i; j++)
//    {
//        if(i%j==0)
//        {
//            count += 1;
//        }
//    }
//    if (count ==2)
//    {

//        Console.WriteLine(i);

//    }
//}
// 9) Fibonacci series
//Console.WriteLine("Enter the limit");
//int.TryParse(Console.ReadLine(), out int limit);
//int num1 = 0,num2 = 1;
//if (limit > 0)
//{
//    Console.WriteLine("The fibonacci series is");
//    if (limit==1)
//    {
//        Console.WriteLine(num1);
//    }
//    else
//    {
//        for (int i = 0; i < limit; i++)
//        {
//            Console.WriteLine(num1);
//            int num3 = num1 + num2;
//            num1 = num2;
//            num2 = num3;

//        }

//    }
//}
//else 
//{
//    Console.WriteLine("Please enter the limit greater the 0");
//}

//10) Check palindrome 

//Console.WriteLine("Enter the number :");
//int.TryParse(Console.ReadLine(), out int number);
//int temp = number, reverse = 0;
//while (temp != 0)
//{
//    int remainder = temp % 10;
//    reverse = reverse * 10 + remainder;
//    temp = temp / 10;

//}
//if (reverse == number)
//{
//    Console.WriteLine("The number is pallindrome");
//}
//else
//{
//    Console.WriteLine("Not Pallindrome");
//}

// 12) Tax calculation program, input the amount and display the tax

//Console.WriteLine("Enter the amount to calculate tax ");
//int.TryParse(Console.ReadLine(), out int amount);
//if(amount <10000)
//{
//    double tax = (amount * 5) / 100;
//    Console.WriteLine("The tax that you have to pay is :"+tax);
//}
//if(amount >10000 &&  amount <=15000)
//{
//    double tax = (amount *7.5 )/ 100;
//    Console.WriteLine("The tax that you have to pay is :" + tax);
//}
//if(amount >15000 && amount <=20000)
//{
//    double tax = (amount * 10) / 100;
//    Console.WriteLine("The tax that you have to pay is :" + tax);
//}
//if(amount >20000 && amount <=25000)
//{
//    double tax = (amount * 12.5) / 100;
//    Console.WriteLine("The tax that you have to pay is :" + tax);
//}
//if(amount >25000)
//{
//    double tax = (amount * 15) / 100;
//    Console.WriteLine("The tax that you have to pay is :" + tax);
//}

// 13) Input a character from console and display the sports name corresponding to it
//using System;

//again:
//{
//    Console.WriteLine("Enter the charecter to display the sports name corresponding to it");

//}
//string letter = Console.ReadLine();
//switch (letter)
//{
//    case "c":
//        {
//            Console.WriteLine("cricket");
//            break;
//        }
//    case "f":
//        {
//            Console.WriteLine("football");
//            break;
//        }
//    case "h":
//        {
//            Console.WriteLine("Hockey");
//            break;
//        }
//    case "t":
//        {
//            Console.WriteLine("Tennis");
//            break;
//        }
//    case "b":
//        {
//            Console.WriteLine("Badminton");
//            break;
//        }
//    default:
//        {
//            Console.WriteLine("Invalid input, please try again");
//            goto again;  
//        }

//}

// 14) Write a program to print pattern
//int limit = 5;
//for (int i = 1;i<=limit; i++)
//{
//    for(int j = 1;j<=i;j++) 
//    {
//        Console.Write("*");
//    }
//    Console.WriteLine("\n");
//}