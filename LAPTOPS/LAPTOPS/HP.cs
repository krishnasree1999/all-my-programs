using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LAPTOPS
{
    class HP : Laptop
    {
        public void name()
        {
            Console.WriteLine("name:HP");
        }
        public void Price()
        {
            Console.WriteLine("price:40,000");
        }
        public void Processor()
        {
            Console.WriteLine("processor:i3");
        }
        public void Ram()
        {
            Console.WriteLine("ram:4GB");
        }
    }
}
