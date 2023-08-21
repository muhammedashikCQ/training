import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? index;

  @override
  void initState() {
    index = 0;
    apiCall();
    super.initState();
  }

  var jsonResponse;
  void apiCall() async{
    Response response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    if(response.statusCode==200)
    {
      setState(() {
        jsonResponse=sampleDataFromJson(response.body);
      });
    }
  }
  



@override
Widget build(BuildContext context) {
  return const Placeholder();
}
}