import 'package:flutter/material.dart';
import 'package:naptah/Home/Profile.dart';
import 'package:naptah/Home/homePage.dart';
import 'package:naptah/Home/premium/premiumPage.dart';
import 'package:naptah/test.dart';

import '../Scanning/resultScreen.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 18.0,
      color: Colors.transparent,
      elevation: 40.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 70.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 30.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                     onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  resultScreen())
                      );
                    },
                    child: Image.asset('assets/bottomIcon/home_Icon.png',
                        color: const Color(0xff707070)),
                  ),
                  Image.asset('assets/bottomIcon/plant_Icon.png',
                      color: const Color(0xff707070)),
                ],
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 30.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const premiumPage())
                      );
                    },
                    child: Image.asset('assets/bottomIcon/chat_Icon.png',
                        color: const Color(0xff707070)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile())
                      );
                    },
                    child: Image.asset('assets/bottomIcon/account_Icon.png',
                        color: const Color(0xff707070)),
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
