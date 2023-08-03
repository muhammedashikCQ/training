function MyFunction() 
{
    // fruits=['Apple','Mango','Orange']
    // result=fruits.map(x=>x.length);
    // console.log(result);
    // newResult=fruits.map(function(x){
    //     return x.length
    // })
    // console.log(newResult);
    // fruits.forEach((x,y)=> 
    //     console.log(x,y)
    // )
    // fruits.forEach(function(x,y)
    // {
    //     console.log(x,y);
    // })
    // fruits.forEach(x=>
    // {
    //     console.log(x);
    // })
    // const student1=
    // {
    //     subject:'Javascript',
    //     learn:function(){
    //         return function(){
    //             return `Learning  ${this.subject1}!`;
    //         };
    //     }
    // };
    // student1.learn()();
    const student2={
        subject:'js',
        learn:function(){
            return() =>{
                return `Learning ${this.subject}`;
            };
        }
    };
    student2.learn();
    console.log(student2)

};
  