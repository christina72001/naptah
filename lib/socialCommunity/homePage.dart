import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/Home/bottom_bar.dart';

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
          padding: const EdgeInsets.all(18.0),
          child: Text(
            'Social Community',
            style: GoogleFonts.merriweatherSans(
              fontSize: 23,
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
      body: ListView(children: [
        Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Image.asset('assets/naptah500.png'),
                    backgroundColor: Colors.blueGrey,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.66,
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
                              // width: 12,
                            ),
                          ),
                          hintText: "What would you like to write?"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            post(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            post(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            post(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            post(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            post(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            post(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            post(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            post(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            post(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            post(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            post(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            post(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            post(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            post(),
          ],
        ),
      ]),
    );
  }
}

class post extends StatelessWidget {
  const post({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width:MediaQuery.of(context).size.width*0.85,
         height: MediaQuery.of(context).size.height*0.48,
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
                  SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            
                  Text(
                    "Diaa Shahda",
                    style: GoogleFonts.merriweatherSans(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 20),
                  ),
                ],
              ),
              SizedBox( height: MediaQuery.of(context).size.height*0.015),
            
              Text(
                '''Hello, I am trying to explain the plant infection in this way but I do not know ,Can you tell me what is the problem?''',
                maxLines: 20,
                style: GoogleFonts.merriweatherSans(
                    fontWeight: FontWeight.normal, fontSize: 15),
              ),
               SizedBox( height: MediaQuery.of(context).size.height*0.008),
              Image.asset(
                'assets/image1.png',
              ),
              SizedBox( height: MediaQuery.of(context).size.height*0.008),
              Divider(
                thickness: 2,
                color: Color(0xffCFCDCD),
              ),
              // SizedBox(height: 3,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/comment.png',
                    ),
                    iconSize: 35,
                  ),
                 
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/unlike.png',
                    ),
                    iconSize: 35,
                  ),

                   IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/like.png',
                    ),
                    iconSize: 35,
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
