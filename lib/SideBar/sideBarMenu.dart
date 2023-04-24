import 'package:flutter/material.dart';
import 'package:naptah/SideBar/sideBar_Pages/Profile.dart';
import 'package:naptah/SideBar/side_bar_items.dart';
import 'package:naptah/SideBar/sideBar_Pages/aboutUs.dart';
import 'package:naptah/SideBar/sideBar_Pages/feedback.dart';
import 'package:naptah/SideBar/sideBar_Pages/help.dart';
import 'package:naptah/SideBar/sideBar_Pages/Language.dart';
import 'package:naptah/SideBar/sideBar_Pages/q&a/Q&A.dart';


class SideBarMenu extends StatefulWidget {
  const SideBarMenu({Key? key}) : super(key: key);

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  bool status = false;
  List<String> languages = ['English', 'العربية'];
  String? selectedLang = 'English';
  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: IconTheme(
    data: IconThemeData(
      color: Colors.blue, // set the color of the icon to blue 
    ),
       
      // backgroundColor: Color(0xff707070),
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              SizedBox(
                height: 15,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Color(0xff707070),
              ),
              DrawerItems(
                name: 'Language',
                icon:Icons.language,
                onPressed: () => onItemPressed(context, index: 0),
              ),
              DrawerItems(
                name: 'Send Feedback',
                icon:Icons.feedback_rounded,
                onPressed: () => onItemPressed(context, index: 1),
              ),

              // Row(
              //   children: [
              //     Icon(
              //       Icons.notifications,
              //       size: 20,
              //     ),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Text(
              //       "Notifications",
              //       style: GoogleFonts.merriweatherSans(
              //           fontSize: 15, color: Colors.black),
              //     ),
              //     SizedBox(
              //       width: 150,
              //     ),
              //     Container(
              //       child: FlutterSwitch(
              //         width: 50.0,
              //         height: 30.0,
              //         activeColor: Color(0xff519A56),
              //         // valueFontSize: 25.0,
              //         toggleSize: 15.0,
              //         value: status,
              //         borderRadius: 30.0,
              //         padding: 5.0,
              //         // showOnOff: true,
              //         onToggle: (val) {
              //           setState(() {
              //             status = val;
              //           });
              //         },
              //       ),
              //     ),
              //   ],
              // ),

              DrawerItems(
                name: 'About Us',
                icon: Icons.people,
                onPressed: () => onItemPressed(context, index: 2),
              ),
              DrawerItems(
                name: 'Q&A',
                icon: Icons.question_answer_sharp,
                onPressed: () => onItemPressed(context, index: 3),
              ),
              DrawerItems(
                name: 'Help',
                icon: Icons.help_outline_rounded,
                onPressed: () => onItemPressed(context, index: 4),
              ),
              DrawerItems(
                name: 'Saves',
                icon: Icons.save,
                onPressed: () => onItemPressed(context, index: 5),
              ),
              // DrawerItems(
              //   name: 'Log Out',
              //   icon: Icons.logout,
              //   onPressed: () => onItemPressed(context, index: 4),
              // ),
            ],
          ),
        ),
      ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Language()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const SendFeedBack()));
        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AboutUs()));
        break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Questions()));
        break;
      case 4:
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Help()));
        break;
      default:
        Navigator.pop(context);
    }
  }

  Widget headerWidget() {
    return InkWell(
      onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Profile()));},
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.green,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text(
                "Christina Maher",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
