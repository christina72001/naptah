import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chat.dart';


class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Chats",
          style: GoogleFonts.merriweatherSans(
            fontWeight: FontWeight.normal,
            fontSize: 25,
            color: Color(0xff184A2C),
          ),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios,color: Color(0xff184A2C),),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
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
         chatWithExperts(),
         chatWithExperts(),
      chatWithExperts(),
         chatWithExperts(),
          chatWithExperts(),
          chatWithExperts(),
          chatWithExperts(),chatWithExperts(),chatWithExperts(),
          

        ],),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Color(0xff184A2C),
      //   child: Image.asset(
      //     'assets/bottomIcon/camera_Icon.png',
      //     width: 30,
      //     height: 30,
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomBar(),
    );
  }
}
class chatWithExperts extends StatelessWidget {
  const chatWithExperts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage()));},
                  child: Text(
                    "Naptah",
                    style: GoogleFonts.merriweatherSans(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          );
  }
}
