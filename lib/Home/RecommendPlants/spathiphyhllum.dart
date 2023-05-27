import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naptah/Home/homePage.dart';
// import 'package:naptah/mainPage/Home/bottom_bar.dart';
// import 'package:naptah/mainPage/Home/homePage.dart';

class spathiphyhllum extends StatefulWidget {
  const spathiphyhllum({super.key});

  @override
  State<spathiphyhllum> createState() => _spathiphyhllumState();
}

class _spathiphyhllumState extends State<spathiphyhllum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        //
        title: Padding(
          padding: const EdgeInsets.only(right: 100),
          child: Text('spathiphyhllum',
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
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 270,
                child: const SingleChildScrollView(
                  child: Text(
                      "is a genus of about 47 species of monocotyledonous flowering plants in the family Araceae, native to tropical regions of the Americas and southeastern Asia. Certain species of Spathiphyllum are commonly known as spath or peace lilies.\n\nThey are evergreen herbaceous perennial plants with large leaves 12–65 cm long and 3–25 cm broad. The flowers are produced in a spadix, surrounded by a 10–30 cm long, white, yellowish, or greenish spathe. The plant does not need large amounts of light or water to survive. They are most often grown as houseplants, however they are able to withstand the elements well enough to thrive when planted outdoors in situations that are hot and humid.",
                      style: TextStyle(
                          color: Color(0xff6b6b6b),
                          fontSize: 18,
                          fontFamily: 'merriweatherSans')),
                ),
              ),
              Expanded(
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                          width: 260,
                          height: 400,
                          child: Image.asset('assets/Spathiphyllum.png')))),
            ],
          ),
        ),
      ),
    );
  }
}
