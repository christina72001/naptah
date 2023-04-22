import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/mainPage/Home/bottom_bar.dart';

class Experts extends StatelessWidget {
  const Experts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Experts",
          style: GoogleFonts.merriweatherSans(
            fontWeight: FontWeight.normal,
            fontSize: 25,
            color: Color(0xff184A2C),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: SizedBox(
                    width: 300,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Color(0xff184A2C),
                          ),
                        ),
                        hintText: 'Search',
                        // hoverColor: Colors.black,
                        prefixIcon: Icon(
                          Icons.search_sharp,
                          color: Color(0xffCFCDCD),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Color(0xffCFCDCD),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mail_outline_outlined,
                      size: 30,
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset(
                      'assets/naptah500.png',
                    ),
                    backgroundColor: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Naptah",
                      style: GoogleFonts.merriweatherSans(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.blueAccent,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset(
                      'assets/naptah500.png',
                    ),
                    backgroundColor: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Naptah",
                      style: GoogleFonts.merriweatherSans(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.blueAccent,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset(
                      'assets/naptah500.png',
                    ),
                    backgroundColor: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Naptah",
                      style: GoogleFonts.merriweatherSans(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.blueAccent,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset(
                      'assets/naptah500.png',
                    ),
                    backgroundColor: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Naptah",
                      style: GoogleFonts.merriweatherSans(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.blueAccent,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset(
                      'assets/naptah500.png',
                    ),
                    backgroundColor: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Naptah",
                      style: GoogleFonts.merriweatherSans(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.blueAccent,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset(
                      'assets/naptah500.png',
                    ),
                    backgroundColor: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Naptah",
                      style: GoogleFonts.merriweatherSans(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.blueAccent,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset(
                      'assets/naptah500.png',
                    ),
                    backgroundColor: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Naptah",
                      style: GoogleFonts.merriweatherSans(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.blueAccent,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset(
                      'assets/naptah500.png',
                    ),
                    backgroundColor: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Naptah",
                      style: GoogleFonts.merriweatherSans(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.blueAccent,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset(
                      'assets/naptah500.png',
                    ),
                    backgroundColor: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Naptah",
                      style: GoogleFonts.merriweatherSans(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.blueAccent,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset(
                      'assets/naptah500.png',
                    ),
                    backgroundColor: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Naptah",
                      style: GoogleFonts.merriweatherSans(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.blueAccent,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff184A2C),
        child: Image.asset(
          'assets/bottomIcon/camera_Icon.png',
          width: 30,
          height: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
