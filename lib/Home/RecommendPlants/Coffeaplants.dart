import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naptah/Home/bottom_bar.dart';
import 'package:naptah/Home/homePage.dart';

class coffeaPlants extends StatefulWidget {
  const coffeaPlants({super.key});

  @override
  State<coffeaPlants> createState() => _coffeaPlantsState();
}

class _coffeaPlantsState extends State<coffeaPlants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        //
        title:  Padding(
          padding: const EdgeInsets.only(right: 100),
          child: Text('coffeaPlants',
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
            onPressed: (
                
                ) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomBar()),
              );
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
              children: [
                Container(
                  height: 270,
                  child: const SingleChildScrollView(
                    child: Text(
                        "The coffee plant is an attractive little specimen with glossy green leaves and a compact growth habit. It makes a surprisingly good potted indoor plant. Native to Ethiopia, the coffee plant (Coffea arabica) will flower in the spring with small white flowers and then bear half-inch berries that gradually darken from green to blackish pods. Each of these fruits contains two seeds, which eventually become the coffee beans you use to brew coffee.\n\nIn their native habitat, coffee plants grow into medium-sized trees. But growers regularly prune the plants to be a more manageable size, especially when the plants are grown indoors. (Note that you can't grow coffee plants from the beans you buy in a store; those have been treated and roasted and will not sprout.) Even though coffee plants are vigorous growers, it will typically take a few years before your plant produces flowers and subsequent fruits.\n",
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
                            child: Image.asset('assets/coffePlants.png')))),
              ],
            ),
      ),
    );
  }
}