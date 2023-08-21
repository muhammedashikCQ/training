import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newflutterapplication/about_page.dart';
import 'package:newflutterapplication/cart_page.dart';
import 'package:newflutterapplication/home_page.dart';
import 'package:newflutterapplication/navbar.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
         
            margin: const EdgeInsets.fromLTRB(0, 10, 20, 0),
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 13, 49, 14), width: 2),
                borderRadius: BorderRadius.circular(100)),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Profile",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: .75),
                              )),
                          content: Container(
                            decoration: const BoxDecoration(),
                            height: 360,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/action1.jpg',
                                  ),
                                  Text(
                                    'Ashik',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15)),
                                  ),
                                  Text('Ashik@gmail.com',
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 15))),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 200, 0),
                                    child: BackButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: Image.asset(
                  'assets/images/action1.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(),
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              SizedBox(
                height: 250,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: DrawerHeader(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromARGB(255, 102, 228, 167),
                              Color.fromARGB(255, 99, 177, 102),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: ListView(
                        children: [
                          Text("Profile",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: .75),
                              )),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 0, 110, 0),
                            child: TextButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Profile",
                                            style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal,
                                                  letterSpacing: .75),
                                            )),
                                        content: SizedBox(
                                          height: 360,
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/action1.jpg',
                                              ),
                                              Text(
                                                'Ashik',
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: 15)),
                                              ),
                                              Text('Ashik@gmail.com',
                                                  style: GoogleFonts.poppins(
                                                      textStyle:
                                                          const TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .black))),
                                              Container(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 200, 0),
                                                child: BackButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: SizedBox(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/action1.jpg',
                                      width: 60,
                                      height: 60,
                                    ),
                                    Text(
                                      'Ashik',
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 13)),
                                    ),
                                    Text(
                                      'Ashik@gmail.com',
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 13)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              Container(
                height: 525,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 102, 228, 167),
                        Color.fromARGB(255, 99, 177, 102),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30)),
                child: ListView(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      leading: const Icon(Icons.home),
                      title: Text('Home',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 15))),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AboutPage()));
                      },
                      leading:
                          const Icon(Icons.account_balance_wallet_outlined),
                      title: Text('About',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 15))),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartPage()));
                      },
                      leading: const Icon(Icons.add_shopping_cart),
                      title: Text('MyCart',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 15))),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/asqw.jpg"),
                  fit: BoxFit.cover)),
          height: 700,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 120, 0),
                    child: Text("Welcome to your \ngreenhouse",
                        style: GoogleFonts.corben(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 25,
                                color: Color.fromARGB(255, 31, 65, 4),
                                letterSpacing: 1)))),
                const SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: TextField(
                    cursorColor: const Color.fromARGB(255, 255, 255, 255),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.fromLTRB(32, 0, 40, 0),
                          child: IconButton(
                              onPressed: () {}, icon: const Icon(Icons.search)),
                        ),
                        hintText: 'Search',
                        hintStyle: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color.fromARGB(255, 2, 26, 3),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                letterSpacing: .36,
                                fontStyle: FontStyle.normal)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 4, 49, 6),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 7, 61, 9),
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
                  margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/images/plant2.jpg',
                          width: 300,
                          height: 200,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      //  bottomNavigationBar: BottomNavigationBar(
      //       items: const <BottomNavigationBarItem>[
      //         BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
      //         BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined),label: 'About'),
      //         BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_checkout),label: 'MyCart')
      //       ]),
      bottomNavigationBar: const Navbar(),
    );
  }
}
