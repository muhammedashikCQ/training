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

    Movies.forEach(element2=>{
        
        if(element2.ReleaseDate.slice(0,4)==='2023' && element2.ActorName==='William Davis')
        {
            console.log(`${element2.MovieName}`)
        }
        })
    
        //3) Retrieve the Actor name and release date of the movie “The Last Stand”
    Movies.forEach(elements3=>{
        if(elements3.MovieName==='The Last Stand')
        {
            console.log(`${elements3.ActorName}, ${elements3.ReleaseDate}`)
        }
    })

    //4)Check whether there is any movie in the list with actor name “John Doe”

    var moviepresent=Movies.some(x=>x.ActorName='John Doe')
    console.log(moviepresent)
    //5)Display the count of movies where the actor name is "Sophia Williams"

    var count=0;
    Movies.forEach(elements3=>{
        if(elements3.ActorName==='Sophia Williams')
        {
            count++
        }
    })
    console.log(count)
    
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
    Movies.forEach(element4=>{
        Movies.forEach(element5=>{
            if(element5.MovieName===element4.MovieName)
            {
                count++;
                console.log(count);
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



}