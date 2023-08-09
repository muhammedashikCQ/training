using SingletonAssignment;

public class newAssingment
{
    static void Main(string[] args)
    {
        Singleton object1=Singleton.Instance;
        Singleton object2=Singleton.Instance;
        Console.WriteLine(object1 == object2);
    }
}