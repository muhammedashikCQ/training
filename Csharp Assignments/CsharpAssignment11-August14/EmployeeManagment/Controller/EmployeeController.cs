using EmployeeApplication.Model.Models;
using EmployeeApplication.Repository.Context;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
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
        public void post(Employees employee,string name1, string name2,string phoneNumber,string mailId,int departmentId)
        {

            employee.FirstName = name1;
            employee.LastName = name2;
            employee.PhoneNumber = phoneNumber;
            employee.EmailId = mailId;
            employee.Department = dbContext?.Department.Find(departmentId);
            dbContext?.Add(employee);
            dbContext?.SaveChanges();
        }
        [HttpDelete("DeleteEmployee")]

        public void delete(Employees employee, int id)
        {

            employee.Id = id;
            dbContext?.Remove(employee);
            dbContext?.SaveChanges();
        }

        [HttpGet("GetById")]
        public IActionResult Get(Employees employee, int id)
        {

            return Ok(dbContext?.Employees.Find(id));

        }

        [HttpGet("GetAll")]
        public IActionResult Get(Employees employee)
        {

            return Ok(dbContext?.Employees);
        }

        [HttpPut("UpdateTheDetail")]

        public void put( Employees employee, int id, string name1,string name2, string phoneNumber, string mailId)
        {
            var x = dbContext?.Employees.Find(id);
            x.FirstName = name1;
            x.LastName = name2;
            x.PhoneNumber = phoneNumber;
            x.EmailId= mailId;
            dbContext?.SaveChanges();
        }
    }
}
