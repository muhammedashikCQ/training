import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controller/add_post_controller.dart';
//import 'package:social_media_page/Controller/add_post_controller.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({super.key});

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  final AddPostController addPostController = Get.put(AddPostController());
  @override
  void initState() {
    super.initState();
    addPostController.controlleraddpost();
  }

  @override
  Widget build(BuildContext context) {
    return //Obx(() => addPostController.isLoading.value
       //// ? const Center(child: CircularProgressIndicator())
       // :
         Scaffold(
          appBar: AppBar(
            title: Text(
              "Add New Post",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      letterSpacing: .75)),
            ),
            leading: const BackButton(),
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  width: 350,
                  height: 100,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: TextField(
                    cursorColor: const Color.fromARGB(255, 20, 20, 20),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Post Id',
                        hintStyle: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color(0xff97BDFF),
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                letterSpacing: .36,
                                fontStyle: FontStyle.normal)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color(0xff97BDFF),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color(0xff97BDFF),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(72.2, 21, 0, 21)),
                  ),
                ),
                TextButton(
                    onPressed: () {
                       print(addPostController.data.value.id);
                    },
                    child: const Text('Post'))
              ],
            ),
          ),
    );
  }
}
