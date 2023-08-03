function MyFunction() 
{
    students=[
        {
            id:1,
            name:"Anil",
            age:26
        },
        {
            id:2,
            name:"Ayad",
            age:25
        },
        {
            id:3,
            name:"Ashik",
            age:23
        },
        {
            id:4,
            name:"Eldo",
            age:28
        }]
    console.log(students)
    let namestring='';
    students.forEach(y=>{
        namestring = namestring ==='' ? y.name
            : `${namestring},${y.name}`;
    })
    console.log(namestring);

    
    const namestringfunction=(namestrings,x)=>namestrings ==='' ? x.name
    : `${namestrings},${x.name}`;
    let namestrings=students.reduce(namestringfunction,'');
    console.log(namestrings)
    

};

 

