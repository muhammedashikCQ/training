import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:new_flutter_app/detail_page.dart';
import 'package:new_flutter_app/sample_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? index;

static Box<String> flutter = Hive.box<String>("demo");
  @override
  void initState() {
    index = 0;
    apiCall();
    super.initState();
  }
  List<SampleData>? jsonResponse;
  // String getname()
  // {
  //   String name=jsonResponse![index!].name!;
  //   return name;
  // }
  void apiCall() async {
    Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    if (response.statusCode == 200) {
      setState(() {
        jsonResponse = sampleDataFromJson(response.body);
        String name=jsonResponse![0].name!;
        flutter.put("name",name);  
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
            child: jsonResponse == null
                ? const CircularProgressIndicator()
                : ListView.builder(
                    itemCount: jsonResponse!.length,
                    itemBuilder: (BuildContext context, index) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              padding:
                                  const EdgeInsets.fromLTRB(20, 15, 20, 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      const Color.fromARGB(255, 33, 90, 190)),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailPage(
                                                jsonresponse:
                                                    jsonResponse![index],
                                              )));
                                },
                                child: SizedBox(
                                  width: 300,
                                  height: 50,
                                  child: Column(
                                    children: [
                                      Text(
                                          "Name : ${jsonResponse![index].name}",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white))),
                                                  
                                      Text(
                                          "Email : ${jsonResponse![index].email}",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white)))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      );
                    })),
      ),
    );
  }
 
}
