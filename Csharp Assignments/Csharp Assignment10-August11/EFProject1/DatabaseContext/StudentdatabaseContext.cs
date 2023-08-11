
using EFProject1.Models;
using EFProject1t.Models;
using Microsoft.EntityFrameworkCore;

namespace EFProject1.DatabaseContext

{
    public class StudentdbContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("server=localhost, 1401;database=CollegeStudents;user id=sa;password=Pass@word;" +
        "TrustServerCertificate=true");
        }

        //public StudentdbContext(DbContextOptions option):base(option) { }
        public DbSet<Student> Student { get; set;} 
        public DbSet<Courses> Courses { get; set;}
    }
}
