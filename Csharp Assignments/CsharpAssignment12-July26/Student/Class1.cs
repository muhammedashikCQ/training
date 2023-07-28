using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Student
{
    public class Program
    {
        static void Main(string[] args)
        {
            List<Student> students = new List<Student>
            {
            new Student(1, "John Doe", 85),
            new Student(2, "Liam Smith", 70),
            new Student(3, "Mary James", 62),
            new Student(4, "Davide James", 55),
            new Student(5, "Lionel Messi", 100),
            new Student(6, "Ronaldo", 90),
            new Student(7, "Neymar", 85)
            };

            Student maxmark = students.MaxBy(x => x.Marks);
            Console.WriteLine("The Person with maximum Mark is :" + maxmark.Name);
            List<Student> GoodStudent = students.Where(x => x.Marks > 75).ToList();
            Console.WriteLine("The Students with Marks greater than 75 is :");
            foreach (Student student in GoodStudent)
            {
                Console.WriteLine(student.Name);
            }
            List<Student> nameend = students.Where(x => x.Name.EndsWith("s")).ToList();
            Console.WriteLine("The student name ends with ");
            foreach (Student student in nameend)
            {
                Console.WriteLine(student.Name);
            }
            List<Student> messi = students.Where(x => x.Name.Equals("Lionel Messi")).ToList();
            Console.WriteLine("the student whose name is ‘Lionel Messi’ :");
            foreach (Student student in messi)
            {
                Console.WriteLine(student.Name);
            }
            List<Student> Ronaldo = students.Where(x => x.Name.Equals("Ronaldo")).ToList();
            Console.WriteLine("the student mark of the student whose name is ‘Ronaldo'");
            foreach (Student student in messi)
            {
                Console.WriteLine(student.Marks);
            }
        }
    }
}


