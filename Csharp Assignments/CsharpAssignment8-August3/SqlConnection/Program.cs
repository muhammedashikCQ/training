public class Details
{
    static void Main(string[] args)
    {
        StudentDetail object1= new StudentDetail();
        object1.GetStudentDetail();
        StudentDetail object2= new StudentDetail();
        int result = object2.InsertStudentDetail("Asci", "Assads", "12V", 28.34);
        Console.WriteLine(result);
    }
}
