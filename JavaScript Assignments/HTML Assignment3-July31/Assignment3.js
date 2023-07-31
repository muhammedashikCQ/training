function MyFunction()
{
    Movies=[
        {
          "MovieName": "The Great Adventure",
          "ActorName": "John Smith",
          "ReleaseDate": "2023-01-15"
        },
        {
          "MovieName": "Mystery in the Woods",
          "ActorName": "Emily Johnson",
          "ReleaseDate": "2022-09-28"
        },
        {
          "MovieName": "Love and Destiny",
          "ActorName": "Michael Brown",
          "ReleaseDate": "2023-05-02"
        },
        {
          "MovieName": "City of Shadows",
          "ActorName": "Sophia Williams",
          "ReleaseDate": "2023-03-12"
        },
        {
          "MovieName": "The Last Stand",
          "ActorName": "William Davis",
          "ReleaseDate": "2022-11-07"
        },
        {
          "MovieName": "Echoes of Time",
          "ActorName": "Olivia Wilson",
          "ReleaseDate": "2022-12-19"
        }
      ]


      // 1.List the movie name along with the actor name of those movies released in the year 2022
  

    Movies.forEach(element => {
       
        if(element.ReleaseDate.slice(0,4)==='2022')
        {
            console.log(`${element.MovieName }: ${ element.ActorName}`)
        }
      });

    // 2) List the movie names released in the year 2023 where the actor is William Davis.

    Movies.forEach(element=>{
        
        if(element.ReleaseDate.slice(0,4)==='2023' && element.ActorName==='William Davis')
        {
            console.log(`${element.MovieName}`)
        }
        })
    
        //3) Retrieve the Actor name and release date of the movie “The Last Stand”
    Movies.forEach(elements=>{
        if(elements.MovieName==='The Last Stand')
        {
            console.log(`${elements.ActorName}, ${elements.ReleaseDate}`)
        }
    })

    //4)Check whether there is any movie in the list with actor name “John Doe”

    var moviepresent=Movies.some(x=>x.ActorName==='John Doe')
    console.log(`Whether there is any movie in the list with actor name “John Doe” : ${moviepresent}`)
    //5)Display the count of movies where the actor name is "Sophia Williams"

    var count=0;
    Movies.forEach(elements=>{
        if(elements.ActorName==='Sophia Williams')
        {
            count++
        }
    })
    console.log(`The Count of Movies : ${count}`)
    
    //6)Insert an element 
// 		{
//             "MovieName": "The Final Stage",
//             "ActorName": "John Doe",
//             "ReleaseDate": "2022-08-11"
//       }
// as last element

    Movies.push({
                "MovieName": "The Final Stage",
                "ActorName": "John Doe",
                "ReleaseDate": "2022-08-11"
                })
    console.log(Movies)


    //7)Check whether there exists any duplicate movie names present in the array


    var count=0;
    Movies.forEach(element1=>{
        Movies.forEach(element2=>{
            if(element2.MovieName===element1.MovieName)
            {
                count++;
            }
        })
    })
    if(count>Movies.length)
    {
        console.log("Duplicates are present")
    }
    else
    {
        console.log("There are no duplicates")
    }

//8) Create a new array starting from the movie "City of Shadows"

var index=Movies.findIndex(x=>x.MovieName==='City of Shadows')
var NewArray=Movies.slice(index)
console.log(NewArray)


    //9)List the distinct actor names in array


    var NewArray=[];
    Movies.forEach(element1 =>
    {
        var count=0;
        Movies.forEach(element2 =>
        {
            if(element2.ActorName===element1.ActorName)
            {
                count++;
            }
        })
        if(count===1)
        {
           NewArray.push(element1.ActorName)
        }
    })
    console.log(NewArray)



//10)Insert an element 
// 		{
//             "MovieName": "Rich & Poor",
//             "ActorName": "Johnie Walker",
//             "ReleaseDate": "2023-08-11"
//       }
// as next element to movie “Love and Destiny”
    var index=Movies.findIndex(x=>x.MovieName==='Love and Destiny')
    Movies.splice(index+1,0,{
   			"MovieName": "Rich & Poor",
    	    "ActorName": "Johnie Walker",
   	 		"ReleaseDate": "2023-08-11"
 		 })
    console.log(Movies)



//11) Display the count of distinct actor names in array

    var NewArray=[];
    var CountOfActors=0;
    Movies.forEach(element1 =>
    {
  
        var count=0;
        Movies.forEach(element2 =>
        {
            if(element2.ActorName===element1.ActorName)
            {
                count++;
            }
        })
        if(count===1)
        {
            CountOfActors++;
        }
    })
    console.log(`The count of distinct actor names : ${CountOfActors}`)


//12) Remove the movie named  "The Last Stand"

    var index=Movies.findIndex(x=>x.MovieName==='The Last Stand')
    Movies.splice(index,1)
    console.log(Movies)


//13 ) Check whether all the movies are released after 2021 Dec 31


var CheckMovies=Movies.every(x=>x.ReleaseDate.slice(0,4)>'2021-12-31')
console.log(`Whether all the movies are released after 2021 Dec 31 :${CheckMovies}`)


//14) Update movie named  "City of Shadows" ‘s release date as  "2023-03-13"



var index=Movies.findIndex(x=>x.MovieName==='City of Shadows')
Movies[index].ReleaseDate="2023-03-13"
console.log(Movies)



//15) Create a new array of movie names whose movie name length is greater than 10.



    var NewArray;
    Movies.forEach(elements=>
    {
        if(elements.MovieName.length>10)
        {
            NewArray.push(elements.MovieName)
        }
    })
    console.log(NewArray)


}