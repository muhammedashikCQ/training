using NewConnection;

public class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Enter the Booking Id to get the ticket details");
        int BookingId=int.Parse(Console.ReadLine());
        BookMyShow object1=new BookMyShow();
        Console.WriteLine("-------------------------------");
        object1.GetTicketDetail(BookingId);
        Console.WriteLine("-------------------------------");
        object1.GetSeatInfoByShow(44);

       
        
    }
}