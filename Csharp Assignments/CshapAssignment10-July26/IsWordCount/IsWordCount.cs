using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace IsWordCount
{
    public static class IsWordCountExtensionClass
    {
        public static int GetwordCount(this string input,string word)
        {
            int count = 0;
            string[] Word=input.Split(' ');
            foreach (string item in Word)
            {
                if (item == word)
                {
                    count += 1;
                }

                continue;
            }
            return count;
        }


    }
}
