using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment_1_a_
{
    class studentDetails
    {
        private int rollNo;
        private string name;
        private string courseJoined;
        private int feePaid;
        private int dueAmount;
        private int payment;

        public studentDetails(int rollno, string name, string course)
        {
            this.rollNo = rollno;
            this.name = name;
            this.courseJoined = course;
        }

        public void Payment(int amount)
        {
            feePaid += amount;
        }

        public void Print()
        {
            Console.WriteLine(rollNo);
            Console.WriteLine(name);
            Console.WriteLine(courseJoined);
            Console.WriteLine(feePaid);
        }

        public int DueAmount
        {

            get
            {
                return TotalFee - feePaid;
            }
        }

        public int TotalFee
        {
            get
            {
                return courseJoined == "c#" ? 2000 : 3000;
            }
        }
    }

}

