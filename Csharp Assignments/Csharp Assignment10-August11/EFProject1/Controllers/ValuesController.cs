
using EFProject1.DatabaseContext;
using EFProject1t.Models;
using Microsoft.AspNetCore.Mvc;

namespace EFProject1.Controllers
{

    [Route("api/[controller]")]
    [ApiController]
    public class ValuesController : ControllerBase
    {
        //private readonly StudentdbContext? dbContext;
        ////We have all the required connections except a connection from the controller to the DB Context
        //public ValuesController(StudentdbContext dbContext)
        //{
        //    //We need a private property,to contact the database
        //    this.dbContext = dbContext;
        //}
        [HttpPost("PostDetail")]
        public void Post(string cname)
        {
            StudentdbContext studentdb = new StudentdbContext();
            Courses course = new Courses();
            course.courseName = cname;
            studentdb.Add(course);
            studentdb.SaveChanges();


        }
        


    }


}