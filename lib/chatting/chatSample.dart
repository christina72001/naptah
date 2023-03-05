import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Color(0xffEBFDF2), boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(3, 3),
                ),
              ]),
              child: Text(
                "Hi, My name is christina",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(left: 80, top: 20),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding:
                    EdgeInsets.only(left: 20, top: 10, bottom: 25, right: 20),
                decoration: BoxDecoration(
                  color: Color(0xff86A49B),
                ),
                child: Column(
                  children: [
                    Text(
                      "Hi, My name is merna ,",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
