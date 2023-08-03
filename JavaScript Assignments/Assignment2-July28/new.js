function MyFunction() {
  Student=[
    {
      "FirstName": "John",
      "LastName": "Doe",
      "Age": 20,
      "Department": "Computer Science"
    },
    {
      "FirstName": "Jane",
      "LastName": "Smith",
      "Age": 22,
      "Department": "Physics"
    },
    {
      "FirstName": "Michael",
      "LastName": "Johnson",
      "Age": 21,
      "Department": "Mathematics"
    },
    {
      "FirstName": "Sarah",
      "LastName": "Williams",
      "Age": 19,
      "Department": "Computer Science"
    },
    {
      "FirstName": "Robert",
      "LastName": "Brown",
      "Age": 23,
      "Department": "Mathematics"
    },
    {
      "FirstName": "Emily",
      "LastName": "Davis",
      "Age": 20,
      "Department": "Computer Science"
    }
  ]
  const computerScienceStudent=Student.filter(x=>x.Department==="Computer Science");
  console.log(computerScienceStudent);
  const NameofStudent=Student.filter(x=>x.Age>21).map(x=>x.FirstName);
  console.log(NameofStudent);
  const Science =Student.some(x=>x.Department === "Computer Science" && x.FirstName === "Robert");
  console.log(Science);
  const StudentAge=Student.some(x=>x.Age>23 && x.Department==="Mathematics");
  console.log(StudentAge);
  const AllStudentsAge=Student.every(x=>x.Age>18);
  console.log(AllStudentsAge);
  const FirstStudent=Student.find(x=>x.FirstName==="John").Department;
  console.log(FirstStudent);
}

      
