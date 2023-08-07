
import 'dart:io';

main()
{

  stdout.writeln("Enter the string to find the palindrome");
  String? input=stdin.readLineSync();
  int? lengthOfString=input?.length;
  var string1=input?.split('');
  int count=0;
 for (int i = 0; i <lengthOfString!/2; i++) 
  {
    if(string1?[i]!=string1?[lengthOfString-i-1])
    {
     count++;
    }
  }
  if(count>0)
  {
    print("The string is not palindrome");
  }
  else
  {
    print("The string is palindrome");
  }

}