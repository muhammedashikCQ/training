function adddata()
   {
      var num = document.getElementById("num").value;
      var email = document.getElementById("email").value;
      var name = document.getElementById("name").value;
  
      var jsonobj = {ID:"",Email:"",Name:""};
      jsonobj.ID=num;
      jsonobj.Email=email;
      jsonobj.Name=name;
      
  
      var str=JSON.stringify(jsonobj);
      try {
         
         var parsedData = JSON.parse(str);
         document.write("Id:",parsedData.ID);
         document.write("Email:",parsedData.Email);
         document.write("Name:",parsedData.Name);

       } catch (e) {
         console.error("Error parsing JSON: " + e.message);
       }
   }
