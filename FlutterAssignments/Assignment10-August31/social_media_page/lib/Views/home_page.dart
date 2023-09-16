import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:social_media_page/Views/add_post_page.dart';
import 'package:social_media_page/Views/chat_page.dart';
import 'package:social_media_page/Views/comments_page.dart';

import '../Controller/home_page_conroller.dart';
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
  final HomepageController controllerGetAll = Get.put(HomepageController());

  @override
  void initState() {
    super.initState();
    controllerGetAll.getallcontroller();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controllerGetAll.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          : Scaffold(
              backgroundColor: const Color.fromARGB(255, 247, 247, 247),
              appBar: AppBar(
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromARGB(255, 108, 177, 255),
                          Color.fromARGB(255, 185, 215, 243),
                          Colors.indigo
                        ]),
                  ),
                ),
                title: Text("Twitter",
                    style: GoogleFonts.changaOne(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 38,
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.normal,
                            letterSpacing: .75))),
                backgroundColor: const Color.fromARGB(255, 167, 207, 240),
                toolbarHeight: 50,
                actions: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Row(
                      children: [
                        InkWell(
                          child: SvgPicture.asset(
                            "assets/images/chat.svg",
                            width: 30,
                          ),
                          onTap: () {
                            Get.to(const ChatPage());
                          },
                        ),
                        const SizedBox(
                          width: 30,
                        ), //IconButton
                        InkWell(
                          child: SvgPicture.asset(
                            "assets/images/add.svg",
                            width: 30,
                          ),
                          onTap: () {
                            Get.to(const AddPostPage());
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
              body: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 85,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                     itemBuilder: (BuildContext context, int index) {

                      return Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 137, 190, 233),
                                  width: 5,
                                )),
                            width: 80,
                            height: 80,
                            child: const InkWell(
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/storyimage.jpg'),
                              ),
                            ),
                          ),
                        ],
                      );
                     }
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: controllerGetAll.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SingleChildScrollView(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(PostDetailPage(
                                          postid: controllerGetAll
                                              .data[index].id!));
                                    },
                                    child: Container(
                                      height: 500,
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 0),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey.shade600,
                                              spreadRadius: 1,
                                              blurRadius: 10)
                                        ],
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
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FontStyle.normal,
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
                                                "assets/images/dummy2.jpg",
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Divider(),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: Colors.white),
                                            height: 50,
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 10, 5),
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
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
              bottomNavigationBar: Container(
                child: BottomNavigationBar(
                  backgroundColor: const Color.fromARGB(255, 228, 242, 252),
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home_filled,
                        color: Colors.black,
                        size: 30,
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.black,
                      ),
                      label: 'Search',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.black,
                      ),
                      label: 'Profile',
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
