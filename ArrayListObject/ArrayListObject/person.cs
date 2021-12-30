using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;

namespace ArrayListObject
{
    class person
    {
        public string name { get; set; }
        public int age { get; set; }

        public string Tostring()
        {
            return name + "-" + age;
        }
    }
}
