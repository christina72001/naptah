import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/Home/homePage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class paymentDetails extends StatefulWidget {
  @override
  _paymentDetailsState createState() => _paymentDetailsState();
}

class _paymentDetailsState extends State<paymentDetails> {
  bool _saveCard = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: AlertDialog(
        
        content: SizedBox(
          height:MediaQuery.of(context).size.height*0.5,

          child: Column(
            // mainAxisSize: MainAxisSize.min,
        
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           
            children: [
              Text('Payment Details',
                  style: GoogleFonts.merriweatherSans(fontSize: 30)),
              Text('CARDE NUMBER ',
                  style: GoogleFonts.merriweatherSans(
                    fontSize: 18,
                    color: const Color(0xffA59F9F),
                  )),
              Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  height:MediaQuery.of(context).size.height*0.044,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(6)),
                  child: const TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()))),
              Row( 
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                   Text('EXPERIPATION DATA ',
                          style: GoogleFonts.merriweatherSans(
                            fontSize: 16,
                            color: const Color(0xffA59F9F),
                          )),
                  Container(
                      width: MediaQuery.of(context).size.width*0.22,
                  height:MediaQuery.of(context).size.height*0.044,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder())))
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  
                       Text('CVV ',
                          style: GoogleFonts.merriweatherSans(
                              fontSize: 16, color: const Color(0xffA59F9F))),
                  Container(
                       width: MediaQuery.of(context).size.width*0.14,
                  height:MediaQuery.of(context).size.height*0.044,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder())))
                ])
              ]),
               Text("CARD HOLDER'S NAME",
                        style: GoogleFonts.merriweatherSans(
                            fontSize: 18, color: const Color(0xffA59F9F))),
        
                            Container(
                    width: MediaQuery.of(context).size.width*0.8,
                  height:MediaQuery.of(context).size.height*0.044,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(6)),
                    child: const TextField(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()))),
        
                            CheckboxListTile(
                    title: Text('Save the card information for future',
                        style: GoogleFonts.merriweatherSans(
                            fontSize: 11, color: Colors.black54)),
                    value: _saveCard,
                    onChanged: (bool? value) {
                      setState(() {
                        _saveCard = value ?? false;
                      });
                    }),
             
              Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  height:MediaQuery.of(context).size.height*0.055,
                  decoration: BoxDecoration(
                      color: const Color(0xff184A2C),
                      borderRadius: BorderRadius.circular(6)),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Confirm Payment',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                  ),
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}
