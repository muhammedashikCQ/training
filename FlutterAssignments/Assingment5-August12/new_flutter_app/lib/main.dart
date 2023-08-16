
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 255, 232),
      body:Center(
        child: Container
        (
          margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
          padding:const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column
            (
              children: 
              [
                
                 const CircleAvatar
                ( 
                  radius:70,
                  backgroundImage:AssetImage('assets/images/as.jpg'
                  )
                
                ),
                const SizedBox(height:10),
                
                Container(
                  height: 40,
                  width: 300,
                  padding: const EdgeInsets.all(10),
                  decoration:  BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 252, 221, 255)),
                  child: const Text("Name: Muhammed Ashik A",style:TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold))),
                 const SizedBox(height:3),
                 
                 Container(
                  height: 40,
                  width: 300,
                  padding: const EdgeInsets.all(10),
                  decoration:  BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 252, 221, 255)),
                  child: 
                 InkWell(
                  onTap: (){
                    print("muhammedashik@gmail.com");
                  },
                  child: const Text("Email Id : muhammedashik@gmail.com",style:TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
                 ),),
                 const SizedBox(height:3),
            

                 
                Container(
                  height: 40,
                  width: 300,
                  padding: const EdgeInsets.all(10),
                  decoration:  BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 252, 221, 255)),
                  child: const Text("Phone No: 9207801300",style:TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold))),
            
            
                const SizedBox(height: 50,),              
                TextFormField
                ( 
                   decoration:  const InputDecoration
                  (
                    border: OutlineInputBorder(borderSide: BorderSide(width: 10)),
                    hintText: 'Enter Your Name',         
                  ),
                cursorColor:const Color.fromARGB(255, 0, 38, 255)
                ),
                

                
                const SizedBox(height: 50,),
               Container
               (width: 200,height: 200,decoration: const BoxDecoration
                  (
                    gradient: LinearGradient
                    (
                        begin:AlignmentDirectional.bottomEnd,
                        end: AlignmentDirectional.bottomStart,     
                        colors:[Colors.purple,Colors.white]
                    ),
                    borderRadius:BorderRadius.all(Radius.circular(50)),
                    boxShadow:[BoxShadow(color: Colors.black,offset:Offset(5, 10),blurRadius: 10,blurStyle: BlurStyle.normal)]
                  ),
                  
               ),
            
              const SizedBox(height: 30,),      
              
                 
              SizedBox
              (
                width: 400,
                height: 50,
                 child: 
                 ElevatedButton
                  (
                    child: 
                    const Row
                    (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: 
                      [
                        Icon(Icons.access_alarm,size: 40),
                        SizedBox(width: 10,),
                        Text("Hello",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.cyan,fontSize: 20),),
                      ],
                    ),
                    onPressed: ()
                    {
                      print("Thank You");
                    },  
                 )
              )
            ],
            ),
          ) ,
        ),
      )
    );
  }
}

