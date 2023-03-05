import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10.0,
      color: Colors.transparent,
      elevation: 15.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/2-30.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('assets/bottomIcon/home_Icon.png',color: Color(0xff707070)),
                  Image.asset('assets/bottomIcon/plant_Icon.png',color: Color(0xff707070)),
                ],
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/2 - 30.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('assets/bottomIcon/chat_Icon.png',color: Color(0xff707070)),
                  Image.asset('assets/bottomIcon/account_Icon.png',color: Color(0xff707070)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
