using EmployeeApplication.Model.Models;
using EmployeeApplication.Repository.Context;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
namespace EmployeeManagement.Controller
{
    [Route("api/[controller]")]
    [ApiController]
    public class DepartmentController:ControllerBase
    {


        private readonly EmployeeApplicationContext? dbContext;

        public DepartmentController(EmployeeApplicationContext dbContext)
        {
            this.dbContext = dbContext;
        }

        [HttpPost("AddDepartment")]

        public void post(Department department,string name,int Locationid)
        {

            department.Name = name;
            department.Location = dbContext?.Location.Find(Locationid);
            dbContext?.Add(department);
            dbContext?.SaveChanges();
        }
        [HttpDelete("DeleteEmployee")]

        public void delete(Department department, int id)
        {

            department.Id = id;
            dbContext?.Remove(department);
            dbContext?.SaveChanges();
        }

        [HttpGet("GetById")]
        public IActionResult Get(Department department, int id)
        {

            return Ok(dbContext?.Department.Find(id));

        }

        [HttpGet("GetAll")]
        public IActionResult Get(Department department)
        {

            return Ok(dbContext?.Department);
        }

        [HttpPut("UpdateTheDetail")]

        public void put(Department department,int id,string name,int locationid)
        {
            var x = dbContext?.Department.Find(id);
            x.Name=name;
            dbContext?.SaveChanges();
        }

    }
}
