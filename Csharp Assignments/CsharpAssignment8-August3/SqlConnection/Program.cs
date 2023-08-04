public class Details
{
    static void Main(string[] args)
    {
        StudentDetail object1= new StudentDetail();
        object1.GetStudentDetail();
        int result = object1.InsertStudentDetail("fdf", "zdf", "12V", 2);
        Console.WriteLine(result);
    }
}
