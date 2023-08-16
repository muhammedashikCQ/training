using EmployeeApplication.Model.Models;
using EmployeeApplication.Repository.Context;
using Microsoft.AspNetCore.Mvc;


namespace EmployeeManagement.Controller
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {

        private readonly EmployeeApplicationContext? dbContext;

        public EmployeeController(EmployeeApplicationContext dbContext)
        {
            this.dbContext = dbContext;
        }

        [HttpPost("AddEmployee")]
        public void post(EmployeeClone emp)
        {

            Employees employee = new Employees();
            employee.PhoneNumber = emp.PhoneNumber;
            employee.FirstName = emp.FirstName;
            employee.LastName = emp.LastName;
            employee.EmailId = emp.EmailId;
            employee.DepartmentId = emp.DepartmentId;
            dbContext?.Add(employee);
            dbContext?.SaveChanges();
        }
    
        [HttpDelete("DeleteEmployee")]

        public void delete(int id)
        {

            Employees employee = new Employees();
            employee.Id = id;
            dbContext?.Remove(employee);
            dbContext?.SaveChanges();
        }

        [HttpGet("GetById")]
        public IActionResult Get(int Id)
        {

            return Ok(dbContext?.Employees.Find(Id));

        }

        [HttpGet("GetAll")]
        public IActionResult Get(Employees employee)
        {

            return Ok(dbContext?.Employees);
        }

        [HttpPut("UpdateTheDetail")]

        public void put( EmployeeClone emp,int id)
        {
            var x = dbContext?.Employees.Find(id);
            x.FirstName= emp.FirstName;
            x.LastName= emp.LastName;
            x.EmailId= emp.EmailId;
            x.PhoneNumber= emp.PhoneNumber;
            x.DepartmentId= emp.DepartmentId;
            dbContext?.SaveChanges();
        }
    }
}
