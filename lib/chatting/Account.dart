import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/chatting/chat.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatPage()),
                );
              },
              icon: Icon(Icons.arrow_back_ios,color: Color(0xff707070),size: 30,)
          ),),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              child: Image.asset(
                'assets/naptahPng.png',
                width: 50,
                height: 50,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Christina Maher",
                  style: TextStyle(
                      color: Color(0xff184A2C),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.check_circle,
                  color: Colors.blue,
                  size: 25,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Text(
                "Agricultural engineer and manager of an agricultural company",
                style: TextStyle(
                  color: Color(0xff184A2C),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xff184A2C)),
                    child: TextButton(
                      child: Text(
                        'Follow',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff184A2C), width: 1),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: TextButton(
                      child: Text(
                        'Message',
                        style:
                            TextStyle(color: Color(0xff184A2C), fontSize: 15),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Education',
                    style: GoogleFonts.merriweatherSans(
                        fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Mansoura University Bachelor's degree, Computer and Information Science Sep 2018 - Jul 2022",
                    style: GoogleFonts.merriweatherSans(
                        fontSize: 13, color: Colors.black),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Color(0xff707070),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'About',
                    style: GoogleFonts.merriweatherSans(
                        fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Agricultural engineer with 10 years of experience and I have a subsidiary company",
                    style: GoogleFonts.merriweatherSans(
                        fontSize: 13, color: Colors.black),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Color(0xff707070),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Skills',
                    style: GoogleFonts.merriweatherSans(
                        fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Team Work - Decision Making - Creative Solutions Cooperative - Work under pressure",
                    style: GoogleFonts.merriweatherSans(
                        fontSize: 13, color: Colors.black),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Color(0xff707070),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
