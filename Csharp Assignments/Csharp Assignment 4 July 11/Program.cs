using System.Xml.Linq;

public class Student
{

    public int StudentId;
    public string StudentName;
    public int Marks;
    public Student(int id, string Name, int Mark)
    {
        StudentId = id;
        StudentName = Name;
        Marks = Mark;
    }
    public char Grade
    {
        get
        {
            if (Marks >= 90)
            {
                return 'A';
            }
            else if (Marks < 90 && Marks >= 80)
            {
                return 'B';
            }
            else if (Marks < 80 && Marks >= 70)
            {
                return 'C';
            }
            else
            {
                return 'D';
            }
        }
    }
    public void Display()
    {
        Console.WriteLine("Student Id :" + StudentId);
        Console.WriteLine("Student Name :" + StudentName);
        Console.WriteLine("Marks :" + Marks);
        Console.WriteLine("Grade :" + Grade);
        Console.WriteLine(" \n");

    }
    static void Main(string[] args)
    {
        Student Student1 = new Student(1, "John", 85);
        Student1.Display();
        Student Student2 = new Student(2, "David", 74);
        Student2.Display();
        Student Student3 = new Student(3, "Thomas", 90);
        Student3.Display();
    }

}