import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();
  bool passwordvalue = true;
  bool confirmpasswordvalue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
            width: 60,
            height: 60,
            margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Padding(
              padding: const EdgeInsets.all(.0),
              child: SvgPicture.asset(
                "assets/images/leading1.svg",
                width: 24,
                height: 18,
              ),
            )),
        actions: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
            child: Image.asset(
              'assets/images/action1.png',
              width: 50,
              height: 50,
            ),
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(33, 0, 33, 0),
                child: Image.asset(
                  'assets/images/girl.png',
                  width: 362,
                  height: 250,
                ),
              ),
              Container(
                  width: 428,
                  height: 453.2,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0)),
                      gradient: LinearGradient(
                          colors: [Color(0xff4063D7), Color(0xff4063D7)])),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(14, 10, 14, 0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'SIGNUP',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: .75)),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: 400,
                          height: 60,
                          child: TextField(
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.name,
                            controller: usernameController,
                            decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(32, 0, 30, 0),
                                  child: SvgPicture.asset(
                                      'assets/images/usernameicon.svg',
                                      width: 16.2,
                                      height: 18),
                                ),
                                hintText: 'Username',
                                hintStyle: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color(0xff97BDFF),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
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
                        const SizedBox(height: 15),
                        SizedBox(
                          width: 400,
                          height: 60,
                          child: TextField(
                            controller: mailController,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(32, 0, 30, 0),
                                  child: SvgPicture.asset(
                                      'assets/images/emailicon.svg',
                                      width: 16.2,
                                      height: 18),
                                ),
                                hintText: 'Email',
                                hintStyle: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color(0xff97BDFF),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
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
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: 400,
                          height: 60,
                          child: TextField(
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: confirmpasswordvalue,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        confirmpasswordvalue =
                                            !confirmpasswordvalue;
                                      });
                                    },
                                    icon: Icon(confirmpasswordvalue
                                        ? Icons.remove_red_eye
                                        : Icons.password)),
                                prefixIcon: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(32, 0, 30, 0),
                                  child: SvgPicture.asset(
                                      'assets/images/passwordicon.svg',
                                      width: 16.2,
                                      height: 18),
                                ),
                                hintText: 'Password',
                                hintStyle: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color(0xff97BDFF),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
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
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: 400,
                          height: 60,
                          child: TextField(
                            controller: confirmpasswordController,
                            obscureText: passwordvalue,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        passwordvalue = !passwordvalue;
                                      });
                                    },
                                    icon: Icon(passwordvalue
                                        ? Icons.remove_red_eye
                                        : Icons.password)),
                                prefixIcon: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(32, 0, 30, 0),
                                  child: SvgPicture.asset(
                                      'assets/images/passwordicon.svg',
                                      width: 16.2,
                                      height: 18),
                                ),
                                hintText: 'Confirm Password',
                                hintStyle: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color(0xff97BDFF),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
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
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          width: 400,
                          height: 60,
                          child: TextButton(
                            onPressed: () {
                             
                              if(confirmpasswordController.text==passwordController.text)
                              {
                                print(usernameController.text);
                                print(mailController.text);
                                print(passwordController.text);
                                Navigator.push(context,MaterialPageRoute(builder: (context) =>  LoginPage(name: usernameController.text, password: passwordController.text,)));

                              }
                              else
                              {
                                print("Password Doesn't Match");
                              }                              
                            },
                            child: Text(
                              'SIGNUP',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Color(0xff2954F1),
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: .66)),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
