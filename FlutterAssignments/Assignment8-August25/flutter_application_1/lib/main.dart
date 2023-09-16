import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page.dart';

void main() => runApp(const GetMaterialApp(home: Home()));

class Controller extends GetxController
{
  var count = 0.obs;
  increment() => count++;
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                                                 useMaterial3: true,
      ),
      home: const Home(),
    );
  }

}




