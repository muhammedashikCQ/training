

using EFProject1t.Models;

namespace EFProject1.Models
{
    public class Student
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }

        public Courses Courses { get; set; }

    }
}
