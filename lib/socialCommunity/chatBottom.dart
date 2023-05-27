import 'package:flutter/material.dart';

class ChatBottomSheet extends StatelessWidget {
  const ChatBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff184A2C)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.mic,
              color: Color(0xff184A2C),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              width: 250,
              alignment: Alignment.centerRight,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Type Something",
                  border: InputBorder.none
                ),
              ),
            )
          ),
          Padding(

            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.attach_file,
              color: Color(0xff184A2C),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.send,
              color: Color(0xff184A2C),
            ),
          ),
        ],
      ),
    );
  }
}
