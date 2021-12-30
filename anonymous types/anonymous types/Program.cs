using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace anonymous_types
{
    class Program
    {
        static void Main(string[] args)
        {
            //an anonymous type is a type (class) without any name that can contain public read-only properties only.
            //It cannot contain other members, such as fields, methods, events, etc.
            //read only = we can access the value of a property but we can't assign a value to it.

            //example: [var student = new { Id = 1, FirstName = "James", LastName = "Bond" };]


            var student = new { Id = 1,
                FirstName = "James",
                LastName = "Bond",
                address = new { city = "hyd", pincode = 500049}
            };
            Console.WriteLine(student.Id); 
            Console.WriteLine(student.FirstName); 
            Console.WriteLine(student.LastName);
            Console.WriteLine(student.address);



            // nested anonymous


        }
    }
}
