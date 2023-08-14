import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
  
        
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
} 

class HomePage extends StatelessWidget 
{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      // appBar: AppBar
      // (title:const  Text('Demo',style: TextStyle(fontWeight: FontWeight.bold),)),
      backgroundColor: Colors.yellow,
      body:Container
      (
        padding:const EdgeInsets.all(12),
         color: Colors.white,
         margin:const EdgeInsets.all(20),
         child:const Column
        (mainAxisAlignment: MainAxisAlignment.center
          
          ,children:
          [
            
          Text(

                   
          'NewApp',
          style: TextStyle(fontSize: 23,
          fontWeight: FontWeight.bold,color:Colors.red,
          decoration: TextDecoration.underline ),
          
          ),

          SizedBox(height: 10),
          Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
          style: TextStyle(fontSize: 15,
          fontWeight: FontWeight.normal,color:Colors.blue,
          
          )),
          SizedBox(height: 10),

          Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
           style: TextStyle(fontSize: 15,
          fontWeight: FontWeight.normal,color:Colors.blue,
          
          )),
          SizedBox(height: 10),

          Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
           style: TextStyle(fontSize: 15,
          fontWeight: FontWeight.normal,color:Colors.blue,
          
          )),
        

          
          
          ]
        )
        
      )
      
      
    );
  }
}





