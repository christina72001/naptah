import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/Home/bottom_bar.dart';
import 'package:naptah/Home/RecommendPlants/plantsCard.dart';
import 'package:naptah/Home/popularPlants/popularCard.dart';
import 'package:naptah/sideBarMenu/sideBarMenu.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    // File image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
     setState(() {
      if (pickedFile != null) {
        // _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: SideBarMenu(),
//       AppBar(
//   title: Text('My App'),
//   leading: IconButton(
//     icon: Icon(Icons.menu), // set the icon for the drawer button
//     color: Colors.white, // set the color of the icon
//     iconSize: 30, // set the size of the icon
//     padding: EdgeInsets.all(10), // set the padding around the icon
//     splashRadius: 20, // set the splash radius of the icon
//     onPressed: () {
//       // open the drawer when the button is pressed
//       Scaffold.of(context).openDrawer();
//     },
//   ),
// );

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
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
           onPressed: () {
          showSearch(context: context, delegate: search());
        },
            icon: Image.asset('assets/search.png'),
          ),
          Container(
            width: 120,
            height: 120,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xffEBFDF2)),
            child: Image(
              width: 99,
              height: 99,
              image: AssetImage('assets/naptah1.png'),
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                "Recommend",
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        fontSize: 30,
                        color: const Color(0xff184A2C),
                        fontWeight: FontWeight.bold)),
              ),
            ),
            PlantsCard(),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                'Popular Plants',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 30,
                      color: const Color(0xff184A2C),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(child: PopularCard()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getImage();
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const Camera()),
          // );
        },
        backgroundColor: Color(0xff184A2C),
        child: Image.asset(
          'assets/bottomIcon/camera_Icon.png',
          width: 40,
          height: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}

class search extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    
    return [
      
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed:(){Navigator.of(context).pop();}, icon: Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('search');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Recent searches ',style: GoogleFonts.merriweatherSans(
                            fontSize: 21, color: const Color(0xff184A2C))),
    );
  }

}
