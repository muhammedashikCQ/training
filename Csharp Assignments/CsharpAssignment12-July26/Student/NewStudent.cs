using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Student
{
    public class Student
    {
        public string Name { get; set; }
        public int Id { get; set; }
        public double Marks { get; private set; }

        public Student(int id, string name, double marks)
        {
            Id = id;
            Name = name;
            Marks = marks;

        }

    }
}