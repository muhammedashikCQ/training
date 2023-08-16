using EmployeeApplication.Model.Models;
using EmployeeApplication.Repository.Context;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
namespace EmployeeManagement.Controller
{
    [Route("api/[controller]")]
    [ApiController]
    public class DepartmentController : ControllerBase
    {


        private readonly EmployeeApplicationContext? dbContext;

        public DepartmentController(EmployeeApplicationContext dbContext)
        {
            this.dbContext = dbContext;
        }

        [HttpPost("AddDepartment")]

        public void post(DepartmentClones department)
        {


            Department dept = new Department();
            dept.Name = department.Name;
            dept.LocationId = department.LocationId;
            dbContext?.Add(dept);
            dbContext?.SaveChanges();
        }

        [HttpDelete("DeleteDepartment")]

        public void delete( int id)
        {
            Department department = new Department();
            department.Id = id;
            dbContext?.Remove(department);
            dbContext?.SaveChanges();
        }

        [HttpGet("GetById")]
        public IActionResult Get(int id)
        {
            return Ok(dbContext?.Department.Find(id));
        }

        [HttpGet("GetAll")]
        public IActionResult Get()
        {

            return Ok(dbContext?.Department);
        }

        [HttpPut("UpdateTheDetail")]

        public void put(DepartmentClones department,int id)
        {
            var x = dbContext?.Department.Find(id);
            x.Name=department.Name;
            x.LocationId=department.LocationId;
            dbContext?.SaveChanges();
        }
    }
}