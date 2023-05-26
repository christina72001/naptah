import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:naptah/Home/bottom_bar.dart';
// // import 'package:naptah/mainPage/Home/bottom_bar.dart';

class HomePageCommunity extends StatefulWidget {
  const HomePageCommunity({Key? key}) : super(key: key);

  @override
  State<HomePageCommunity> createState() => _HomePageCommunityState();
}

class _HomePageCommunityState extends State<HomePageCommunity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Social Community',
            style: GoogleFonts.merriweatherSans(
              fontSize: 25,
              fontWeight: FontWeight.normal,
              color: Color(0xff184A2C),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/search.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Image.asset('assets/naptah500.png'),
                    backgroundColor: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 40,
                    width: 280,
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                width: 2, color: Color(0xff184A2C)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(
                              color: Color(0xffCFCDCD),
                              width: 12,
                            ),
                          ),
                          hintText: "What would you like to write?"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                height: 370,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Color(0xffCFCDCD), width: 3)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Image.asset('assets/naptah500.png'),
                            backgroundColor: Colors.blueGrey,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Diaa Shahda",
                            style: GoogleFonts.merriweatherSans(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '''Hello, I am trying to explain the plant infection in this way but I do not know ,Can you tell me what is the problem?''',
                        maxLines: 20,
                        style: GoogleFonts.merriweatherSans(
                            fontWeight: FontWeight.normal, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/image1.png',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 2,
                        color: Color(0xffCFCDCD),
                      ),
                      // SizedBox(height: 3,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/like.png',
                            ),
                            iconSize: 40,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/unlike.png',
                            ),
                            iconSize: 40,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/comment.png',
                            ),
                            iconSize: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                height: 370,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Color(0xffCFCDCD), width: 3)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Image.asset('assets/naptah500.png'),
                            backgroundColor: Colors.blueGrey,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Diaa Shahda",
                            style: GoogleFonts.merriweatherSans(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '''Hello, I am trying to explain the plant infection in this way but I do not know ,Can you tell me what is the problem?''',
                        maxLines: 20,
                        style: GoogleFonts.merriweatherSans(
                            fontWeight: FontWeight.normal, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/image1.png',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 2,
                        color: Color(0xffCFCDCD),
                      ),
                      // SizedBox(height: 3,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/like.png',
                            ),
                            iconSize: 40,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/unlike.png',
                            ),
                            iconSize: 40,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/comment.png',
                            ),
                            iconSize: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                height: 370,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Color(0xffCFCDCD), width: 3)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Image.asset('assets/naptah500.png'),
                            backgroundColor: Colors.blueGrey,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Diaa Shahda",
                            style: GoogleFonts.merriweatherSans(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '''Hello, I am trying to explain the plant infection in this way but I do not know ,Can you tell me what is the problem?''',
                        maxLines: 20,
                        style: GoogleFonts.merriweatherSans(
                            fontWeight: FontWeight.normal, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/image1.png',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 2,
                        color: Color(0xffCFCDCD),
                      ),
                      // SizedBox(height: 3,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/like.png',
                            ),
                            iconSize: 40,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/unlike.png',
                            ),
                            iconSize: 40,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/comment.png',
                            ),
                            iconSize: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
  
    );
  }
}
