using EmployeeApplication.Model.Models;
using Microsoft.EntityFrameworkCore;

namespace EmployeeApplication.Repository.Context
{
    public class EmployeeApplicationContext:DbContext
    {


        public EmployeeApplicationContext(DbContextOptions option):base(option)
        {
            
        }

        public DbSet<Location> Location { get; set; }
        public DbSet<Department> Department { get; set; }
        public DbSet<Employees> Employees { get; set; }
    }
}
