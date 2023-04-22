import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/mainPage/Home/homePage.dart';
import 'package:quickalert/quickalert.dart';

class SendFeedBack extends StatefulWidget {
  const SendFeedBack({Key? key}) : super(key: key);

  @override
  State<SendFeedBack> createState() => _SendFeedBackState();
}

class _SendFeedBackState extends State<SendFeedBack> {
  void showAlert(){
    QuickAlert.show(context: context, type: QuickAlertType.success);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff707070),
              size: 30,
            )),
        // title: Text(
        //   "About Us",
        //   style: GoogleFonts.merriweatherSans(
        //       fontSize: 20, color: Color(0xff184A2C)),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Give Feedback",
              style: GoogleFonts.merriweatherSans(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0xff184A2C),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "How did we do?",
              style: GoogleFonts.merriweatherSans(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Colors.black),
            ),
            RatingBar.builder(
              initialRating: 3,

              minRating: 0.5,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star_rate,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color(0xffA59F9F),
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Care to share more about it ?",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff184A2C),
                ),
                child: TextButton(
                  onPressed: () {
                    showAlert();
                  },
                  child: Text(
                    "Submit",
                    style: GoogleFonts.merriweatherSans(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
