import 'package:flutter/material.dart';
import 'package:naptah/chatting/Account.dart';
import 'package:naptah/chatting/chatBottom.dart';
import 'package:naptah/chatting/chatSample.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: EdgeInsets.only(top: 5),
          child: AppBar(
            elevation: 0,
            backgroundColor: Color(0xff184A2C),
            leadingWidth: 10,
            title: Row(
              children: [
                ClipRect(
                  child: Image.asset(
                    'assets/bottomIcon/account_Icon.png',
                    width: 65,
                    height: 65,
                  ),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccountPage()),
                    );
                  },
                  child: Text(
                    "Christina Maher",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 5,),
                Icon(Icons.check_circle,color: Colors.blue,),
              ],
            ),
            actions: [
              Padding(padding: EdgeInsets.only(right: 25),
              child: Icon(Icons.call,size: 30,),),
              Padding(padding: EdgeInsets.only(right: 25),
                child: Icon(Icons.video_call,size: 30,),),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 20 ,left: 20,right: 20,bottom: 80),
        children: [
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
        ],
      ),
      bottomSheet: Container(padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
          child: ChatBottomSheet()),
    );
  }
}
