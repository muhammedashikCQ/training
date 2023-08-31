import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controller/get_all_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Color? mycolor;
bool pressed1 = false;
bool pressed2 = false;
bool pressed3 = false;

class _HomePageState extends State<HomePage> {
  final GetAllController controller = Get.put(GetAllController());
  @override
  void initState() {
    super.initState();
    controller.getallcontroller();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          : Scaffold(
        backgroundColor: Colors.white,
        //appBar: AppBar(backgroundColor:  const Color.fromARGB(255, 205, 208, 209),shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),toolbarHeight: 50,),
        body: 
        Column(
    
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              height: 50,
              width: 390,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: SingleChildScrollView(
                child: Row(
                  
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                      decoration: BoxDecoration(
                          color: pressed1 ? Colors.black : Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50))),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            pressed1 = !pressed1;
                          });
                        },
                        child: Text("For You",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: pressed1
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: .75))),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      padding: const EdgeInsets.fromLTRB(18, 15, 0, 0),
                      decoration: BoxDecoration(
                          color: pressed2 ? Colors.black : Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50))),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            pressed2 = !pressed2;
                          });
                        },
                        child: Text("Trending",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: pressed2
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: .75))),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 50,
                      width: 90,
                      padding: const EdgeInsets.fromLTRB(18, 15, 0, 0),
                      decoration: BoxDecoration(
                          color: pressed3 ? Colors.black : Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50))),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            pressed3 = !pressed3;
                          });
                        },
                        child: Text("Posts",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: pressed3
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: .75))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                 // itemCount: controller.data.length,
                 itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            width: 300,
                            height: 50,
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                ),
                              child: Column(children: [
                                Row(
                                        
                                  children: [
                                    CircleAvatar(child: Image.asset("assets/images/profilepicture1.png")),
                                    const SizedBox(width: 20,),
                                    Text("Michael Armstrong",style:GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: pressed3
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: .75)) ,)
                                  ],
                                )
                              ],),
                          //  child: Text(controller.data[index].title!),
                          
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        )));
  }
}
