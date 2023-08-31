import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controller/controllerclass.dart';
import 'book_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Controller cntl = Get.put(Controller());

  @override
  void initState() {
    super.initState(); 
    cntl.demo();

  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => cntl.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          : Scaffold(
              bottomNavigationBar: Container(
                height: 50,
                color: const Color.fromARGB(255, 170, 235, 245),
              
                padding: const EdgeInsets.fromLTRB(70, 0, 50, 0),
                child: const Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: 35,
                    ),
                    SizedBox(
                      width: 85,
                    ),
                    Icon(
                      Icons.adjust_sharp,
                      size: 35,
                    ),
                    SizedBox(
                      width: 85,
                    ),
                    Icon(
                      Icons.account_circle,
                      size: 35,
                    ),
                  ],
                ),
              ),
              backgroundColor: const Color.fromARGB(255, 207, 249, 255),
              body: Container(
                 margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: ListView.builder(
                    itemCount: cntl.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: 300,
                              height: 50,
                               decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromARGB(255, 33, 90, 190)),
                              child: TextButton(
                                  onPressed: () {
                                    Get.to(  BookPage(id: cntl.data[index].id!));
                                  },
                                  child: Text(cntl.data[index].name!,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white)))),
                                  
                            ),
                            const SizedBox(height: 50,)
                          ],
                        ),
                      );
                    }),
              )),
    );
  }
}
