import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:social_media_page/Controller/get_comments_controller.dart';

class CommentsPage extends StatefulWidget {
  final int postid;
  const CommentsPage({super.key, required this.postid});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  final GetCommentsController getCommentsController =
      Get.put(GetCommentsController());
  @override
  void initState() {
    super.initState();
    getCommentsController.getcomments(widget.postid);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => getCommentsController.isLoading.value
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
              leading: const BackButton(),
              title: Text(
                "Comments",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        letterSpacing: .75)),
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 247, 247, 247),
            body: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: getCommentsController.data.length,
                        //  itemCount: 1,
                        itemBuilder: (BuildContext context, int index) {
                          return SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 5, 20, 0),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            const CircleAvatar(
                                                  backgroundImage: AssetImage("assets/images/profilepicture1.png"),
                                            ),
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
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        ReadMoreText(
                                          getCommentsController
                                              .data[index].body!,
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
                                        const Divider(),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            )));
  }
}
