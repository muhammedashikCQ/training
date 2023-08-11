using Microsoft.AspNetCore.Mvc;

namespace Student.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class StudentController : ControllerBase
    {
        [HttpPost]
        public void  Abc (string name,string address,string stnd,decimal mark)
        {
            StudentDetail studentdetail = new StudentDetail();
            Student student = new Student();
            student.name = name;
            student.address = address;
            student.std = stnd;
            student.mark = mark;
            studentdetail.InsertStudentDetail(student);     
        }

        [HttpGet]
        public IActionResult GetDetail (int id) 
        {
           StudentDetail studentdetail = new StudentDetail();
            var x = studentdetail.GetStudentDetail(id);
            return Ok(x);
        }
        [HttpGet("GetDetail")]
        public IActionResult GetAllDetail()
        {
            StudentDetail studentdetail = new StudentDetail();
            return Ok(studentdetail.GetAllStudentDetail());
        }

    }
}