using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Vue_ajax
{
    public class Stu
    {
        public Stu(string name, int age, string sex)
        {
            Name = name;
            Age = age;
            Sex = sex;
        }

        public string Name { get; set; }
        public int Age { get; set; }
        public string Sex { get; set; }
    }
}