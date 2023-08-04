using StudentApp;
using System.Runtime.ConstrainedExecution;

public class programs
{
    static void Main(string[] args)
    {
        List<Student> stdlist = new List<Student>
        {
            new Student(1, "John Doe", 85),
            new Student(2, "Liam Smith", 70),
            new Student(3, "Mary James", 62),
            new Student(4, "Davide James", 55),
            new Student(5, "Lionel Messi", 100),
            new Student(6, "Ronaldo", 90),
            new Student(7, "Neymar", 85)
        };
        var z=stdlist.ToList();
        foreach(Student student in z)
        {
            Console.WriteLine(student.Name);
        }
        var c = stdlist.Where(x => x.Marks > 50 && x.Name.EndsWith("s")).ToList();
        foreach (Student student in c)
        {
            Console.WriteLine( student);
        }
 

    }
}