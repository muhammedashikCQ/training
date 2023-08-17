
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: SvgPicture.asset('assets/images/leading1.svg',width:50,height: 50),
        actions:  
        [
       Image.asset('assets/images/action1.png',width:50,height: 50),
        // Image.asset('assets/images/as.jpg')
     
  
        ]
      ),
      body: const Center(
        child: Column(children: [
        // Image.asset('assets/images/as.jpg')
          
        ],)
      ),
    );
}
}