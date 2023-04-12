import 'package:flutter/material.dart';
import 'package:naptah/Home/homePage.dart';
import 'package:readmore/readmore.dart';

import 'RecommendationSreen.dart';

class resultScreen extends StatefulWidget {
  @override
  State<resultScreen> createState() => _resultScreenState();
}

bool clicked = true;
String topTitleA = "Alternaria (early blight) of potatoes ";
String txt1A =
    "Alternaria is a fungal disease caused by Alternaria solani or Alternaria Alternata.  \nA disease that causes premature aging of leaves.\nIt can cause significant payback losses in the event of early attacks. \nThe most common variety is Alternaria Solani.\nThe soil should consist of organic matter, usually in the form of compost, with adequate amounts of fertilizer and moisture.\nWhen growing tomatoes, you need to start early because most of them take a while to ripen.";
String secondTitleA = "Symptoms ";
String txt2A =
    "On the leaves: the appearance of small necrotic spots of varying size and shape, limited by veins and central rings that characterize the disease.\nThe severity of the damage leads to the dropping of the leaves of the plants, which affects the development of the tubers.\nOn the tubers: the appearance of dark brown spots with central rings.  \nThe spots are necrotic, rather deep, which leads to a bad tuber.";
String topTitleB = "Preventive measures";
String txt1B =
    "– Get rid of plant residues that are the source of infection transmission.\n – Avoid any kind of stress that stimulates the stabilization of the disease.\n– Carrying out the agricultural cycle at least every two years.\n– Use of healthy and approved seeds.";
String secondTitleB = "Recommend access to Knowledge more information";
String txt2B =
    "https://plantura.garden/uk/vegetables/potatoes/potato-diseases\nhttps://plantvillage.psu.edu/topics/potato/infos\nhttps://youtu.be/LGF33NN4B8U\nhttps://youtu.be/zJGc6z8-xYw\nhttps://youtu.be/N5rYwj8snKI";
String theText = " \n\n\n\n\n \n\n";

class _resultScreenState extends State<resultScreen> {
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
        title: Padding(
          padding: EdgeInsets.only(top: 9, left: 22),
          child: Text(
            "Potato leaves",
            style: TextStyle(color: Color(0xff184A2C), fontSize: 26),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 9),
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.24,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                            child: Image.asset("assets/potatoLeavesc.png"))),
                  ),
                ),
              ),
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
                          // if (clicked) {
                          //   theText =
                          //       "Alternaria (early blight) of potatoes: \n\nAlternaria is a fungal disease caused by Alternaria solani or Alternaria Alternata.  A disease that causes premature aging of leaves.  It can cause significant payback losses in the event of early attacks.  The most common variety is Alternaria Solani.\nThe soil should consist of organic matter, usually in the form of compost, with adequate amounts of fertilizer and moisture.When growing tomatoes, you need to start early because most of them take a while to ripen.\n\nSymptoms:  \n\nOn the leaves: the appearance of small necrotic spots of varying size and shape, limited by veins and central rings that characterize the disease. The severity of the damage leads to the dropping of the leaves of the plants, which affects the development of the tubers. On the tubers: the appearance of dark brown spots with central rings.  The spots are necrotic, rather deep, which leads to a bad tuber.";
                          // } else {
                          //   theText = 'This is the original long text.';
                          // }
                          setState(() {});
                        },
                        child: Chip(
                          backgroundColor:
                              clicked ? Color(0xff184A2C) : Color(0xffD9D8D8),
                          label: Text(
                            "   About the disease   ",
                            style: TextStyle(
                              color: clicked ? Colors.white : Color(0xff184A2C),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            clicked = !clicked;
                            // if (clicked) {
                            //   theText =
                            //       "Alternaria (early blight) of potatoes: \n\nAlternaria is a fungal disease caused by Alternaria solani or Alternaria Alternata.  A disease that causes premature aging of leaves.  It can cause significant payback losses in the event of early attacks.  The most common variety is Alternaria Solani.\nThe soil should consist of organic matter, usually in the form of compost, with adequate amounts of fertilizer and moisture.When growing tomatoes, you need to start early because most of them take a while to ripen.\n\nSymptoms:  \n\nOn the leaves: the appearance of small necrotic spots of varying size and shape, limited by veins and central rings that characterize the disease. The severity of the damage leads to the dropping of the leaves of the plants, which affects the development of the tubers. On the tubers: the appearance of dark brown spots with central rings.  The spots are necrotic, rather deep, which leads to a bad tuber.";
                            // } else {
                            //   theText = 'This is the original long text.';
                            // }
                            setState(() {});
                          },
                          child: Chip(
                              backgroundColor:
                                  clicked ? Color(0xffD9D8D8) : Color(0xff184A2C),
                              label: Text(
                                "        Health Care         ",
                                style: TextStyle(
                                  color:
                                      clicked ? Color(0xff184A2C) : Colors.white,
                                ),
                              ))),
                    ],
                  ),
                ),
              ),
              clicked
                  ? Text(topTitleA, style: TextStyle(fontSize: 20))
                  : Text(topTitleB, style: TextStyle(fontSize: 20)),
              clicked ? Text(txt1A, style: TextStyle(fontSize: 18,color: Color(0xff707070))) : Text(txt1B, style: TextStyle(fontSize: 18,color: Color(0xff707070))),
              clicked
                  ? Text(secondTitleA, style: TextStyle(fontSize: 20))
                  : Text(secondTitleB, style: TextStyle(fontSize: 20)),
              clicked
                  ? Text(txt2A, style: TextStyle(fontSize: 18,color: Color(0xff707070)))
                  : Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        child: ReadMoreText(
                          txt2B,
                          style: TextStyle(fontSize: 18,color: Colors.blue),
                          trimLines: 1,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Read more',
                          trimExpandedText: 'Read less',
                          moreStyle: TextStyle(
                              color: Color.fromARGB(255, 3, 95, 171),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          lessStyle: TextStyle(
                              color: Color.fromARGB(255, 3, 95, 171),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(height: 22),
              clicked
                  ? Text("")
                  : Center(
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
                            Text("Recommended Treatment",style: TextStyle(fontSize: 16),),
                            
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                               
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff184A2C)
                                ),

                                child: IconButton(
                                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  recommendationScreen())
                      );},
                                    icon: Icon(Icons.arrow_forward,color: Colors.white,size: 24,)),
                              ),
                            )
                          ],
                        ),
                      ),
                  ),
                  SizedBox(height: 22)
            ],
          ),
        ),
      ),
    );
  }
}
