import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newflutterapplication/navbar.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:BackButton(onPressed: (){
          Navigator.of(context).pop();
      }, ),),
      body: Center(
        child: Text("Home Page",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  letterSpacing: .75),
            )),
      ),
      bottomNavigationBar:  const Navbar()
    );
  }
}
