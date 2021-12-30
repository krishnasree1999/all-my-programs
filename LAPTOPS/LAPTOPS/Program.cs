using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAPTOPS
{
    class Program
    {
        static void Main(string[] args)
        {
            HP H1 = new HP();
            H1.name();
            H1.Price();
            H1.Ram();
            H1.Processor();
            Console.ReadKey();
        }
    }
}
