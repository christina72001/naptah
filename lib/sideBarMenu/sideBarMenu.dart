import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/sideBarMenu/aboutUs.dart';
import 'package:naptah/sideBarMenu/side_bar_items.dart';
import 'package:naptah/sideBar_Pages/people.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:naptah/sideBar_Pages/q&a/Q&A.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({Key? key}) : super(key: key);

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                color: Colors.black,
              ),
              DrawerItems(
                name: 'MyProfile',
                icon: Icons.account_circle,
                onPressed: () => onItemPressed(context, index: 0),
              ),
             Row(
               children: [
                 Icon(Icons.notifications,size: 20,),
                 SizedBox(width: 20,),
                 Text("Notifications", style: GoogleFonts.merriweatherSans(
                     fontSize: 15, color: Colors.black),),
                 SizedBox(width: 60,),
                  Container(child: FlutterSwitch(
                    width: 50.0,
                    height: 30.0,
                    activeColor: Color(0xff519A56),
                    // valueFontSize: 25.0,
                    toggleSize: 15.0,
                    value: status,
                    borderRadius: 30.0,
                    padding: 5.0,
                    // showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),),
               ],
             ),
              // DrawerItems(
              //   name: 'Send Feedback',
              //   icon: Icons.feedback,
              //   onPressed: () => onItemPressed(context, index: 2),
              // ),
              DrawerItems(
                name: 'About Us',
                icon: Icons.people,
                onPressed: () => onItemPressed(context, index: 1),
              ),
              DrawerItems(
                name: 'Q&A',
                icon: Icons.question_answer,
                onPressed: () => onItemPressed(context, index: 2),
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
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const People()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const AboutUs()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Questions()));
        break;
      default:
        Navigator.pop(context);
    }
  }

  Widget headerWidget() {
    return Row(
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
    );
  }
}
