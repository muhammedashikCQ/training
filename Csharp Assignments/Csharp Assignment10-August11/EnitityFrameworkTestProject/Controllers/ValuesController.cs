using EnitityFrameworkTestProject.DatabaseContext;
using EnitityFrameworkTestProject.Models;
using Microsoft.AspNetCore.Mvc;
using System.Globalization;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace EnitityFrameworkTestProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ValuesController : ControllerBase
    {
        private readonly StudentdbContext? dbContext;
        //We have all the required connections except a connection from the controller to the DB Context
        public ValuesController(StudentdbContext dbContext)
        {
            //We need a private property,to contact the database
            this.dbContext = dbContext;
        }
        [HttpPost("PostDetail")]
        public void Post(string cname)
        {
            Courses course = new Courses();
            course.courseName = cname;
            dbContext?.Add(course);

        }

     
    }
}
