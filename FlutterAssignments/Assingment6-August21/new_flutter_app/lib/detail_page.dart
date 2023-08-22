import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:new_flutter_app/sample_page.dart';

class DetailPage extends StatefulWidget {
  final SampleData jsonresponse;
  const DetailPage({
    Key? key,
    required this.jsonresponse,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  static Box<String> flutter = Hive.box<String>("demo");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 101, 207),
        leading: BackButton(onPressed: () {
          Navigator.of(context).pop();
        }),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 31, 101, 207),
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 14, 119, 204),
                              width: 3),
                          borderRadius: BorderRadius.circular(100)),
                      child: ClipOval(
                          child: Image.asset(
                        "assets/images/as.jpg",
                        width: 100,
                        height: 100,
                      ))),
                  const SizedBox(height: 15),
                  Text(
                    widget.jsonresponse.name!,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                  Text(
                    "Company : ${widget.jsonresponse.company!.name}",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              callNumber(widget.jsonresponse.phone!);
                              //makingPhoneCall();
                              // showDialog(
                              //     context: context,
                              //     builder: (BuildContext context) {
                              //       return AlertDialog(
                              //         title: Text("Phone Number",
                              //             style: GoogleFonts.poppins(
                              //               textStyle: const TextStyle(
                              //                   color: Colors.black,
                              //                   fontSize: 25,
                              //                   fontWeight: FontWeight.bold,
                              //                   fontStyle: FontStyle.normal,
                              //                   letterSpacing: .75),
                              //             )),
                              //         content: SizedBox(
                              //           height: 150,
                              //           child: Column(
                              //             children: [
                              //               ClipOval(
                              //                   child: Image.asset(
                              //                 "assets/images/as.jpg",
                              //                 width: 100,
                              //                 height: 100,
                              //               )),
                              //               const SizedBox(height: 10,),
                              //               Text(widget.jsonresponse.phone!,style: const TextStyle(fontWeight: FontWeight.bold),)
                              //             ],
                              //           ),
                              //         ),
                              //       );
                              //});
                            },
                            child: SvgPicture.asset(
                              "assets/images/phone.svg",
                              width: 40,
                              height: 40,
                            )),
                        const SizedBox(
                          width: 50,
                        ),
                        TextButton(
                            onPressed: () {
                              print(flutter.get("name"));
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text("Message",
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: .75),
                                          )),
                                      content: SizedBox(
                                        height: 150,
                                        child: Column(
                                          children: [
                                            ClipOval(
                                                child: Image.asset(
                                              "assets/images/as.jpg",
                                              width: 100,
                                              height: 100,
                                            )),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              widget.jsonresponse.email!,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: SvgPicture.asset(
                              "assets/images/message.svg",
                              width: 40,
                              height: 40,
                            )),
                        const SizedBox(
                          width: 50,
                        ),
                        TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text("Mail",
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: .75),
                                          )),
                                      content: SizedBox(
                                        height: 150,
                                        child: Column(
                                          children: [
                                            ClipOval(
                                                child: Image.asset(
                                              "assets/images/as.jpg",
                                              width: 100,
                                              height: 100,
                                            )),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              widget.jsonresponse.phone!,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: SvgPicture.asset(
                              "assets/images/email.svg",
                              width: 40,
                              height: 40,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(50, 50, 0, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.account_circle_rounded),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(widget.jsonresponse.username!),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.phone_rounded),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(widget.jsonresponse.phone!),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.message_outlined),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(widget.jsonresponse.email!),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.home_outlined),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(widget.jsonresponse.address!.suite!),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_pin),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(widget.jsonresponse.address!.street!),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.network_cell),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(widget.jsonresponse.website!),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.business_center_rounded),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(widget.jsonresponse.company!.name!),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  //   makingPhoneCall() async {
  //   dynamic url= widget.jsonresponse.phone!;
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
}



callNumber(String phoneNumber) async {
  String number = phoneNumber;
  await FlutterPhoneDirectCaller.callNumber(number);
}
