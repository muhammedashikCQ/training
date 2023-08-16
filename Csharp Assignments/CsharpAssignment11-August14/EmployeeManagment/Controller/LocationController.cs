using EmployeeApplication.Model.Models;
using EmployeeApplication.Repository.Context;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
namespace EmployeeManagement.Controller
{
    [Route("api/[controller]")]
    [ApiController]
    public class LocationController : ControllerBase
    {


        private readonly EmployeeApplicationContext? dbContext;

        public LocationController(EmployeeApplicationContext dbContext)
        {
            this.dbContext = dbContext;
        }

        [HttpPost("AddLocation")]

        public void post(string name )
        {

            Location location=new Location();
            location.Name = name;
            dbContext?.Add(location);
            dbContext?.SaveChanges();
        }
        [HttpDelete("Deletelocation")]

        public void delete(int id)
        {
            Location location =new Location();
            location.Id = id;
            dbContext?.Remove(location);
            dbContext?.SaveChanges();
        }

        [HttpGet("GetById")]
        public IActionResult Get(int id)
        {
           
            return Ok(dbContext?.Location.Find(id));

        }

        [HttpGet("GetAll")]
        public IActionResult Get()
        {

            return Ok(dbContext?.Location);
        }

        [HttpPut("UpdateTheDetail")]

        public void put(int id, string name)
        {
            Location location = new Location();
            var x = dbContext?.Location.Find(id);
            x.Name = name;
            dbContext?.SaveChanges();

        }
    }
}
