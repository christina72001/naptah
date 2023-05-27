import 'dart:io';
import 'package:flutter/material.dart';
import 'package:naptah/Home/bottom_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:tflite/tflite.dart';
import 'RecommendationSreen.dart';
import 'dart:convert';
import 'package:flutter/material.dart';

class diseaseANDtreatment extends StatefulWidget {
  final File imageFile;
  final String responseText;
  diseaseANDtreatment({required this.imageFile, required this.responseText});

  @override
  State<diseaseANDtreatment> createState() => _diseaseANDtreatmentState();
}

bool clicked = true;

class _diseaseANDtreatmentState extends State<diseaseANDtreatment> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          iconSize: 30,
          padding: EdgeInsets.only(top: 9, left: 22),
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xff184A2C),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.responseText,
          style: TextStyle(color: Color(0xff184A2C), fontSize: 26),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.imageFile == null
                  ? Container(
                      alignment: Alignment.center,
                      child: Text(
                        "no image Choosen !",
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 9),
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height * 0.24,
                            child: Image.file(widget.imageFile),
                          ),
                        ),
                      ),
                    ),
              Column(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Color(0xffD9D8D8),
                      ),
                      height: 34,
                      margin: EdgeInsets.symmetric(vertical: 9),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              clicked = !clicked;

                              setState(() {});
                            },
                            child: Chip(
                              backgroundColor: clicked
                                  ? Color(0xff184A2C)
                                  : Color(0xffD9D8D8),
                              label: Text(
                                "   About the disease   ",
                                style: TextStyle(
                                  color: clicked
                                      ? Colors.white
                                      : Color(0xff184A2C),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                clicked = !clicked;

                                setState(() {});
                              },
                              child: Chip(
                                  backgroundColor: clicked
                                      ? Color(0xffD9D8D8)
                                      : Color(0xff184A2C),
                                  label: Text(
                                    "        Health Care         ",
                                    style: TextStyle(
                                      color: clicked
                                          ? Color(0xff184A2C)
                                          : Colors.white,
                                    ),
                                  ))),
                        ],
                      ),
                    ),
                  ),
                  clicked
                      ?
                      //About the disease  text
                      Text("")
                      :
                      // Health Care  text
                      Center(
                          child: Container(
                            // width: MediaQuery.of(context).size.height*0.9,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Image.asset("assets/marj.png"),
                                ),
                                Text(
                                  "Recommended Treatment",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff184A2C)),
                                    child: IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      recommendationScreen()));
                                        },
                                        icon: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                          size: 24,
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                  SizedBox(height: 22)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
