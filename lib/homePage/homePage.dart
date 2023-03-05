import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/homePage/bottom_bar.dart';
import 'package:naptah/homePage/plantsCard.dart';
import 'package:naptah/homePage/popularPlants/popularCard.dart';

import 'package:naptah/sideBarMenu/sideBarMenu.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: SideBarMenu(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 9.0 ,),
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: Image.asset(
        //       'assets/leadingIcon.png',
        //       width: 70,
        //       height: 70,
        //     ),
        //   ),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/search.png'),
          ),
          Image(
            image: AssetImage('assets/naptah1.png'),
            width: 70,
            height: 70,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 18.0, top: 5, bottom: 5,right: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Recommend",
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 30,
                      color: Color(0xff184A2C),
                      fontWeight: FontWeight.bold)),
            ),
            PlantsCard(),
            Text(
              'Popular Plants',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: 30,
                    color: Color(0xff184A2C),
                    fontWeight: FontWeight.bold),),

            ),
            Expanded(child: PopularCard()),
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
