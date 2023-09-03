import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controller/update_post_controller.dart';

class UpdatePostPage extends StatefulWidget {
  final int id;
  final String title;
  final String body;

  const UpdatePostPage({super.key, required this.id, required this.title, required this.body});

  @override
  State<UpdatePostPage> createState() => _UpdatePostPageState();
}

class _UpdatePostPageState extends State<UpdatePostPage> {
  final UpdatePostController updatePostController =
      Get.put(UpdatePostController());
  @override
  void initState() {
    super.initState();
    updatePostController.updatepostcontroller(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => updatePostController.isLoading.value
        ? const Center(child: CircularProgressIndicator())
        : Scaffold(
            appBar: AppBar(
              title: Text("Update",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            letterSpacing: .75))),
              leading: const BackButton(),
            ),
            body: Center(
              child: Column(
                children: [
                  const Divider(),
                  // Container(
                  //   width: 350,
                    
                  //   padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  //   child: TextField(
                  //     cursorColor: const Color.fromARGB(255, 20, 20, 20),
                  //     keyboardType: TextInputType.number,
                  //     decoration: InputDecoration(
                  //         hintText: widget.id.toString(),
                  //         hintStyle: GoogleFonts.poppins(
                  //             textStyle: const TextStyle(
                  //                 color: Color(0xff97BDFF),
                  //                 fontWeight: FontWeight.w400,
                  //                 fontSize: 20,
                  //                 letterSpacing: .36,
                  //                 fontStyle: FontStyle.normal)),
                  //         enabledBorder: OutlineInputBorder(
                  //           borderSide: const BorderSide(
                  //             width: 1,
                  //             color: Color(0xff97BDFF),
                  //           ),
                  //           borderRadius: BorderRadius.circular(50),
                  //         ),
                  //         focusedBorder: OutlineInputBorder(
                  //           borderSide: const BorderSide(
                  //             width: 1,
                  //             color: Color(0xff97BDFF),
                  //           ),
                  //           borderRadius: BorderRadius.circular(50),
                  //         ),
                  //         contentPadding:
                  //             const EdgeInsets.fromLTRB(72.2, 21, 0, 21)),
                  //   ),
                  // ),
                  const SizedBox(height: 5,),
                  SizedBox(
                    child: Text("Title",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            letterSpacing: .75))),
                  ),
                  Container(
                    width: 350,
                    
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: TextField(
                      cursorColor: const Color.fromARGB(255, 20, 20, 20),
                      
            keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          hintText: widget.title,
                          hintStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xff97BDFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  letterSpacing: .36,
                                  fontStyle: FontStyle.normal)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color(0xff97BDFF),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color(0xff97BDFF),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(72.2, 21, 0, 21)),
                    ),
                  ),
                  const SizedBox(height: 40,),
                   SizedBox(
                    child: Text("Content",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            letterSpacing: .75))),
                  ),
                  
                  Container(
                    width: 350,
                    
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: TextField(
                      cursorColor: const Color.fromARGB(255, 20, 20, 20),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: widget.body.toString(),
                          hintStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xff97BDFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  letterSpacing: .36,
                                  fontStyle: FontStyle.normal)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color(0xff97BDFF),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color(0xff97BDFF),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(72.2, 21, 0, 21)),
                    ),

                  ),
                  const SizedBox(height: 40,),
                  Container(
                    decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 183, 205, 253),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          width: 300,
                          height: 60,
                    child: TextButton(onPressed: (){}, child:Text(
                                'UPDATE',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color(0xff2954F1),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal, 
                                        letterSpacing: .66))) ),
                  )
                ],
              ),
            ),
          ));
  }
}
