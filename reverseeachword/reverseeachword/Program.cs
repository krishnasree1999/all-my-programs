using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace reverseeachword
{
    class Program
    {
        static void Main(string[] args)
        {
            string str = "hello world";
            string strrev = " ";

            foreach (var word in str.Split(' '))
            {
                string temp = " ";
                foreach (var ch in word.ToCharArray())
                {
                    temp = ch+ " " +temp;
                }
                strrev = strrev +  temp  +  " ";
            }
            Console.WriteLine(strrev);
        }
    }
}
