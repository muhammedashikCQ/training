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

        public void post( Location location,string Name)
        {
          
            location.Name = Name;
            dbContext?.Add(location);
            dbContext?.SaveChanges();
        }
        [HttpDelete("Deletelocation")]

        public void delete(Location location,int id)
        {
            
            location.Id = id;
            dbContext?.Remove(location);
            dbContext?.SaveChanges();
        }

        [HttpGet("GetById")]
        public IActionResult Get(Location location,int id)
        {
           
            return Ok(dbContext?.Location.Find(id));

        }

        [HttpGet("GetAll")]
        public IActionResult Get(Location location)
        {

            return Ok(dbContext?.Location);
        }

        [HttpPut("UpdateTheDetail")]

        public void put(Location location, int id, string name)
        {
            var x = dbContext?.Location.Find(id);
            x.Name = name;
            dbContext?.SaveChanges();
        }











    }
}
