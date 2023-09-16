import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controller/controllerclass1.dart';

class BookPage extends StatefulWidget {
  final int id;

  const BookPage({super.key, required this.id});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  final Controller1 c1 = Get.put(Controller1());

  @override
  void initState() {
    super.initState();
    c1.demo(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => c1.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          : Scaffold(
      bottomNavigationBar: Container(
        height: 40,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
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
      body: Center(
        child: Container(
          width: 500,
          color: const Color.fromARGB(255, 168, 231, 238),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                child: Text("The Detail of Particular Book",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 0, 0, 0)))),
              ),
            Text("Name :${c1.data.value.name!}")
            
            ],
          ),
        ),
      ),
    ));
  }
}
