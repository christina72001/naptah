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
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('Payment Details',
                  style: GoogleFonts.merriweatherSans(fontSize: 30))
            ]),
            const SizedBox(height: 16),
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('CARDE NUMBER ',
                      style: GoogleFonts.merriweatherSans(
                        fontSize: 18,
                        color: const Color(0xffA59F9F),
                      ))),
              Container(
                  width: 310,
                  height: 48,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(6)),
                  child: const TextField(
                      decoration:
                          InputDecoration(border: OutlineInputBorder()))),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('EXPERIPATION DATA ',
                          style: GoogleFonts.merriweatherSans(
                            fontSize: 18,
                            color: const Color(0xffA59F9F),
                          ))),
                  Container(
                      height: 48,
                      width: 198,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder())))
                ]),
                const SizedBox(
                  width: 12,
                ),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('CVV ',
                          style: GoogleFonts.merriweatherSans(
                              fontSize: 18, color: const Color(0xffA59F9F)))),
                  Container(
                      height: 48,
                      width: 60,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(6)),
                      child: const TextField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder())))
                ])
              ]),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("CARD HOLDER'S NAME",
                      style: GoogleFonts.merriweatherSans(
                          fontSize: 18, color: const Color(0xffA59F9F)))),
              Container(
                  height: 48,
                  width: 310,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(6)),
                  child: const TextField(
                      decoration:
                          InputDecoration(border: OutlineInputBorder()))),
              CheckboxListTile(
                  title: Text('Save the card information for future',
                      style: GoogleFonts.merriweatherSans(
                          fontSize: 11, color: const Color(0xffA59F9F))),
                  value: _saveCard,
                  onChanged: (bool? value) {
                    setState(() {
                      _saveCard = value ?? false;
                    });
                  })
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 312,
                height: 61,
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
            ),
          ],
        ),
      ),
    );
  }
}
