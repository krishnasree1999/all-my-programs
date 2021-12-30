using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment_1_a_
{
    class Program
    {
        static void Main(string[] args)
        {
            studentDetails s = new studentDetails(7, "name:TARA", "course:c#");
            s.Payment(2000);
            s.Print();
            Console.WriteLine(s.DueAmount);
        }
    }
}
