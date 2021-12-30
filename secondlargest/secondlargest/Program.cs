using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace secondlargest
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] array = { 2, 11, 15, 1, 7, 99, 6, 85, 4 };
            Array.Sort(array);
            Array.Reverse(array);
            Console.WriteLine("Second Highest Value In Array " + array[1]);

            foreach (var result in array)
            {
                Console.Write(result + " ");
            }
        }
    }
}
