using StudentApp;

public class program
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
    }
}