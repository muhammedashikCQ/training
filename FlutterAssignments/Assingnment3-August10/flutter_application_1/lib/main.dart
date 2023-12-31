import 'package:flutter/material.dart';
 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget 
{
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      title: 'Hello world App',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(248, 12, 32, 17))),
      debugShowCheckedModeBanner: false,
      home: const Homepage()
    );
  }
}
      
      
  class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar
        (          
          title:const 
          Text('Demo App')
        ),
        body: const Center
        (
          child:Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Text('Hello world.',
              style: TextStyle
              (
                fontWeight: FontWeight.bold,
                fontSize: 30
              )),
              Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters "
              )
            ]
          ) 
        ),
      );
  }
}
      
    
      
      
      

