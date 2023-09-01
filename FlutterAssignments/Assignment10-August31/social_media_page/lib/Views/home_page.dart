import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:social_media_page/Views/comments_page.dart';

import '../Controller/get_all_controller.dart';
import 'post_detail_page.dart';

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
  final GetAllController controllerGetAll = Get.put(GetAllController());

  @override
  void initState() {
    super.initState();
    controllerGetAll.getallcontroller();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => controllerGetAll.isLoading.value
        ? const Center(child: CircularProgressIndicator())
        : Scaffold(
            backgroundColor: const Color.fromARGB(255, 247, 247, 247),
            appBar: AppBar(
              title: Text("Twitter",
                  style: GoogleFonts.rochester(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 38,
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          letterSpacing: .75))),
              backgroundColor: const Color.fromARGB(255, 195, 220, 240),
              toolbarHeight: 50,
              actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.comment,size: 30,color: Colors.black,),
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.add_box,size: 30,color: Colors.black,),
            onPressed: () {},
          ), //IconButton
        ],
            
              
            ),
            body: Column(
              children: [
                // Container(
                //   margin: const EdgeInsets.fromLTRB(10, 40, 10, 0),
                //   height: 50,
                //   width: 390,
                //   decoration: const BoxDecoration(
                //       color: Color.fromARGB(255, 228, 227, 227),
                //       borderRadius: BorderRadius.all(Radius.circular(50))),
                //   child: SingleChildScrollView(
                //     child: Row(
                //       children: [
                //         Container(
                //           height: 50,
                //           width: 100,
                //           padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                //           decoration: BoxDecoration(
                //               color:
                //                   pressed1 ? Colors.black : Colors.transparent,
                //               borderRadius:
                //                   const BorderRadius.all(Radius.circular(50))),
                //           child: InkWell(
                //             onTap: () {
                //               setState(() {
                //                 pressed1 = !pressed1;
                //               });
                //             },
                //             child: Text("For You",
                //                 style: GoogleFonts.poppins(
                //                     textStyle: TextStyle(
                //                         color: pressed1
               // //                             ? Colors.white
                //                             : Colors.black,
                //                         fontSize: 15,
                //                         fontWeight: FontWeight.w500,
                //                         fontStyle: FontStyle.normal,
                //                         letterSpacing: .75))),
                //           ),
                //         ),
                //         const SizedBox(
                //           width: 50,
                //         ),
                //         Container(
                //           height: 50,
                //           width: 100,
                //           padding: const EdgeInsets.fromLTRB(18, 15, 0, 0),
                //           decoration: BoxDecoration(
                //               color:
                //                   pressed2 ? Colors.black : Colors.transparent,
                //               borderRadius:
                //                   const BorderRadius.all(Radius.circular(50))),
                //           child: InkWell(
                //             onTap: () {
                //               setState(() {
                //                 pressed2 = !pressed2;
                //               });
                //             },
                //             child: Text("Trending",
                //                 style: GoogleFonts.poppins(
                //                     textStyle: TextStyle(
                //                         color: pressed2
                //                             ? Colors.white
                //                             : Colors.black,
                //                         fontSize: 15,
                //                         fontWeight: FontWeight.w500,
                //                         fontStyle: FontStyle.normal,
                //                         letterSpacing: .75))),
                //           ),
                //         ),
                //         const SizedBox(
                //           width: 50,
                //         ),
                //         Container(
                //           height: 50,
                //           width: 90,
                //           padding: const EdgeInsets.fromLTRB(18, 15, 0, 0),
                //           decoration: BoxDecoration(
                //               color:
                //                   pressed3 ? Colors.black : Colors.transparent,
                //               borderRadius:
                //                   const BorderRadius.all(Radius.circular(50))),
                //           child: InkWell(
                //             onTap: () {
                //               setState(() {
                //                 pressed3 = !pressed3;
                //               });
                //             },
                //             child: Text("Posts",
                //                 style: GoogleFonts.poppins(
                //                     textStyle: TextStyle(
                //                         color: pressed3
                //                             ? Colors.white
                //                             : Colors.black,
                //                         fontSize: 15,
                //                         fontWeight: FontWeight.w500,
                //                         fontStyle: FontStyle.normal,
                //                         letterSpacing: .75))),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                 const SizedBox(
                                        height: 10,
                                      ),
                Expanded(
                  child: ListView.builder(
                      itemCount: controllerGetAll.data.length,
                      //  itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.to(PostDetailPage(
                                      postid:
                                          controllerGetAll.data[index].id!));
                                },
                                child: Container(
                                  height: 400,
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 5, 20, 0),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                              child: Image.asset(
                                                  "assets/images/profilepicture1.png")),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "Michael Armstrong",
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle: FontStyle.normal,
                                                    letterSpacing: .75)),
                                          ),
                                          const SizedBox(
                                            width: 140,
                                          ),
                                          InkWell(
                                              onTap: () {},
                                              child: SvgPicture.asset(
                                                "assets/images/threedot.svg",
                                                width: 20,
                                              ))
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Divider(),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      ReadMoreText(
                                        controllerGetAll.data[index].title!,
                                        trimLines: 1,
                                        colorClickableText:
                                            const Color.fromARGB(
                                                255, 114, 114, 114),
                                        trimMode: TrimMode.Line,
                                        trimCollapsedText: ' ',
                                        trimExpandedText: ' Show less',
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: .75,
                                        )),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      ReadMoreText(
                                        controllerGetAll.data[index].body!,
                                        trimLines: 3,
                                        colorClickableText:
                                            const Color.fromARGB(
                                                255, 114, 114, 114),
                                        trimMode: TrimMode.Line,
                                        //trimCollapsedText: ' ',
                                        trimExpandedText: ' Show less',
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: .75)),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            "assets/images/dummyimage.jpg",
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Divider(),
                                      Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.white),
                                        height: 50,
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 0, 10, 0),
                                        child: Row(
                                          children: [
                                            Badge(
                                              label: Text(6.toString()),
                                              child: Image.asset(
                                                "assets/images/likeicon.png",
                                                width: 30,
                                                height: 30,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 130,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Get.to(CommentsPage(
                                                    postid: controllerGetAll
                                                        .data[index].id!));
                                              },
                                              child: Badge(
                                                label: Text(controllerGetAll
                                                    .data.length
                                                    .toString()),
                                                child: Image.asset(
                                                  "assets/images/commenticon.png",
                                                  width: 30,
                                                  height: 30,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 130,
                                            ),
                                            Badge(
                                              label: Text(6.toString()),
                                              child: Image.asset(
                                                "assets/images/saveicon1.png",
                                                width: 30,
                                                height: 30,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),

                                  //  child: Text(controller.data[index].title!),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
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
