import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../Controller/get_single_controller.dart';
import 'update_post_page.dart';

class PostDetailPage extends StatefulWidget {
  final int postid;

  const PostDetailPage({super.key, required this.postid});

  @override
  State<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  final GetSingleController controllergetsingle =
      Get.put(GetSingleController());
  @override
  void initState() {
    super.initState();
    controllergetsingle.getsingle(widget.postid);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controllergetsingle.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          : Scaffold(
              appBar: AppBar(
                  flexibleSpace: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromARGB(255, 192, 145, 255),
                            Color.fromARGB(255, 185, 215, 243),
                            Colors.indigo
                          ]),
                    ),
                  ),
                  backgroundColor: const Color.fromARGB(255, 195, 220, 240),
                  leading: const BackButton(),
                  actions: [
                    InkWell(
                        child: InkWell(
                      child: const Icon(
                        Icons.edit,
                        color: Colors.black,
                        size: 25,
                      ),
                      onTap: () {
                        Get.to(UpdatePostPage(
                            id: widget.postid,
                            title: controllergetsingle.data.value.title!,
                            body: controllergetsingle.data.value.body!));
                      },
                    )),
                  ]),
              body: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: Column(
                    children: [
                      ReadMoreText(
                        controllergetsingle.data.value.title!,
                        trimLines: 1,
                        colorClickableText:
                            const Color.fromARGB(255, 114, 114, 114),
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
                        controllergetsingle.data.value.body!,
                        trimLines: 3,
                        colorClickableText:
                            const Color.fromARGB(255, 114, 114, 114),
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
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/dummy2.jpg"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                            Badge(
                              // label: Text(controllerGetAll.data.length
                              // .toString()),
                              child: Image.asset(
                                "assets/images/commenticon.png",
                                width: 30,
                                height: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 130,
                            ),
                            Badge(
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
            ), //list
    );
  }
}
