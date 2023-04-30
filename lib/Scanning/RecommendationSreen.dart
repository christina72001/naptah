import 'package:flutter/material.dart';
import 'package:naptah/Scanning/resultScreen.dart';

class recommendationScreen extends StatelessWidget {
  const recommendationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
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
        title: Padding(
          padding: EdgeInsets.only(top: 9, left: 16),
          child: Text(
            "Recommended Treatment",
            style: TextStyle(color: Color(0xff184A2C), fontSize: 23),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: SingleChildScrollView(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/score1.png"),
              ),
               Text("Score",style: TextStyle(color: Color(0xff184A2C),fontSize: 45),),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text("Rapid growth stage: In this stage, and when the climatic conditions are suitable for the development of the fungus (temperature ranging from 20 to 30°C).\n\nwe advise you to use Consento at a dose of 1.5 L/ha to 2 L/ha.  This treatment also ensures the control of mildew disease.\n\nThey require a medium temperature of 65°F (18°C) or higher to ripen.\nTherefore, be sure to wait until all danger of frost has passed before placing your plants in the garden.",style: TextStyle(fontSize: 18,color: Color(0xff707070))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}