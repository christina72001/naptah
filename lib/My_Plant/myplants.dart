import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/My_Plant/schedule.dart';
import 'package:naptah/utils.dart';

class my_plants extends StatelessWidget {
@override
Widget build(BuildContext context) {
double baseWidth = 428;
double fem = MediaQuery.of(context).size.width / baseWidth;
double ffem = fem * 0.97;
return Container(
width: double.infinity,
child: Container(
padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 542 * fem),
width: double.infinity,
decoration: BoxDecoration(
color: Color(0xffffffff),
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
padding:
EdgeInsets.fromLTRB(37 * fem, 0 * fem, 38 * fem, 26 * fem),
width: double.infinity,
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
margin:
EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 66 * fem),
width: 353 * fem,
height: 19 * fem,
child: Image.asset(
'assets/page-1/images/image-4.png',
fit: BoxFit.cover,
),
),
Container(
margin:
EdgeInsets.fromLTRB(13 * fem, 0 * fem, 13 * fem, 32 * fem),
width: double.infinity,
child: Row(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
margin:
EdgeInsets.fromLTRB(0 * fem, 0 * fem, 59 * fem, 0 * fem),
child: Text(
'My plants',
style: GoogleFonts.merriweatherSans(
fontSize: 30 * ffem,
fontWeight: FontWeight.w300,
height: 1.2575 * ffem / fem,
color: Color(0xff000000),
),
),
),
InkWell(
  onTap: (){
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => scheduale()),
            );
  },
  child:   Text(
  
  'Schedule',
  
  style: GoogleFonts.merriweatherSans(
  
  fontSize: 30 * ffem,
  
  fontWeight: FontWeight.w300,
  
  height: 1.2575 * ffem / fem,
  
  color: Color(0x87000000),
  
  ),
  
  ),
),
],
),
),
Container(
margin:
EdgeInsets.fromLTRB(13 * fem, 0 * fem, 237 * fem, 0 * fem),
width: double.infinity,
child: Row(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
margin:
EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 1 * fem),
width: 24 * fem,
height: 24 * fem,
child: Image.asset(
'assets/page-1/images/image-6.png',
fit: BoxFit.cover,
),
),
Text(
'1 Plant',
style: GoogleFonts.merriweatherSans(
fontSize: 24 * ffem,
fontWeight: FontWeight.w300,
height: 1.2575 * ffem / fem,
color: Color(0xff184a2c),
),
),
],
),
),
],
),
),
Container(
margin:
EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 31 * fem),
width: double.infinity,
height: 1 * fem,
decoration: BoxDecoration(
color: Color(0xffcfcdcd),
boxShadow: [
BoxShadow(
color: Color(0x3f403f3f),
offset: Offset(12 * fem, 2 * fem),
blurRadius: 5.5 * fem,
),
],
),
),
Container(
margin:
EdgeInsets.fromLTRB(37 * fem, 0 * fem, 37 * fem, 0 * fem),
padding:
EdgeInsets.fromLTRB(22 * fem, 19 * fem, 17 * fem, 19 * fem),
width: double.infinity,
decoration: BoxDecoration(
border: Border.all(color: Color(0xffcfcdcd)),
color: Color(0xffffffff),
borderRadius: BorderRadius.circular(10 * fem),
boxShadow: [
BoxShadow(
color: Color(0x3f000000),
offset: Offset(0 * fem, 4 * fem),
blurRadius: 12 * fem,
),
],
),
child: Row(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
margin:
EdgeInsets.fromLTRB(0 * fem, 0 * fem, 27 * fem, 72 * fem),
width: 6 * fem,
height: 22 * fem,
child: Image.asset(
'assets/page-1/images/image-8.png',
fit: BoxFit.cover,
),
),
Container(
margin:
EdgeInsets.fromLTRB(0 * fem, 0 * fem, 23 * fem, 42 * fem),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
margin:
EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
child: Text(
'Potato leaves',
style: GoogleFonts.merriweatherSans(
fontSize: 19 * ffem,
fontWeight: FontWeight.w300,
height: 1.2575 * ffem / fem,
color: Color(0xff184a2c),
),
),
),
Text(
'Fasayafsa',
style: GoogleFonts.merriweatherSans(
fontSize: 18 * ffem,
fontWeight: FontWeight.w300,
height: 1.2575 * ffem / fem,
color: Color(0xff6a6a6a),
),
),
],
),
),
Container(
width: 139 * fem,
height: 102 * fem,
child: ClipRRect(
borderRadius: BorderRadius.circular(10 * fem),
child: Image.asset(
'assets/page-1/images/rectangle-3.png',
fit: BoxFit.cover,
),
),
),
],
),
),
],
),
),
);
}
}