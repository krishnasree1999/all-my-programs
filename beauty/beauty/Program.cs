using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace beauty
{
    class Program
    {
        static void Main(string[] args)
        {
            List<string> appointmentschedule = new List<string>();
            appointmentschedule.Add(" 7/25/2019  13:45:00");
            foreach (var d in appointmentschedule)
            {
                Console.WriteLine(d);

            }
            {
                List<string> appointmentpassed = new List<string>();
                appointmentpassed.Add(" 7/25/2019  13:45:00");
                foreach (var b in appointmentpassed)
                {
                    Console.WriteLine(appointmentpassed.Contains(" 7/25/2019  13:45:00"));
                }
            }
            {
                List<string> appointmentinafternoon = new List<string>();
                appointmentinafternoon.Add("7/25/2019 13:45:00");
                TimeSpan start = new TimeSpan(12, 0, 0);
                TimeSpan end = new TimeSpan(18, 0, 0);
                if (start <= end)
                {

                    foreach (var i in appointmentinafternoon)
                    {
                        Console.WriteLine(appointmentinafternoon.Contains(i));
                    }
                }
            }
            {
                List<string> description = new List<string>();
                description.Add("7/25/2019 13:45:00 PM");
                foreach (var s in description)
                {
                    Console.WriteLine("you have an appointment on {0}", s);
                }
            }
        }
    }
}
