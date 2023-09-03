import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:social_media_page/Views/add_post_page.dart';
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
                actions: [
                  IconButton(
                    icon: const Icon(
                      Icons.comment,
                      size: 30,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ), //IconButton
                  IconButton(
                    icon: const Icon(
                      Icons.add_box,
                      size: 30,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const AddPostPage(),
                        ),
                      );
                    },
                  ), //IconButton
                ],
              ),
              body: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 85,
                    //padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 195, 220, 240),
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
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 195, 220, 240),
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
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 195, 220, 240),
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
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 195, 220, 240),
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
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 195, 220, 240),
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
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 195, 220, 240),
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
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 195, 220, 240),
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
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 195, 220, 240),
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
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 195, 220, 240),
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
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 195, 220, 240),
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
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
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
              bottomNavigationBar: SizedBox(
                height: 65,
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  backgroundColor: const Color.fromARGB(255, 195, 220, 240),
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home_filled,
                        size: 30,
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.search, size: 30),
                      label: 'Search',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person, size: 30),
                      label: 'Profile',
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
