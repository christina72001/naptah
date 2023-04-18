import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naptah/Home/bottom_bar.dart';
import 'package:naptah/Home/homePage.dart';
import 'package:naptah/Home/popularPlants/lemon.dart';

class vegetables extends StatefulWidget {
  const vegetables({super.key});

  @override
  State<vegetables> createState() => _vegetablesState();
}

class _vegetablesState extends State<vegetables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        //
        title:  Padding(
          padding: const EdgeInsets.only(right: 150),
          child: Text('Vegetables',
                style:
                    TextStyle(fontSize: 26.sp, color: const Color(0xff184A2C))),
        ),
          
        leading: Container(
          width: 4,
          height: 4,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xffF9F9F9)),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Color(0xff707070),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  BottomBar()),
              );
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(10, (index) {
              return Container(
                margin: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                  if (index == 1) {
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const lemon()),
                );
                  }
                },
                  child: Image.asset('assets/vegetables/$index.png',width: 160,height: 196,)),
              );
            }),
          ),
      ),
    );
  }
}
