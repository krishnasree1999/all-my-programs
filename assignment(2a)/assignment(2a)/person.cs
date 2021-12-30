using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace assignment_2a_
{
    class person
    {
        protected string firstName;
        protected string lastName;
        protected int idNumber;

        public person(String firstName, String lastName, int identification)
        {
            this.firstName = firstName;
            this.lastName = lastName;
            this.idNumber = identification;
        }
        public void printPerson()
        {
            Console.WriteLine("Name: " + lastName + ", " + firstName + "\nID: " + idNumber);
        }
    }
}
