import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/utils.dart';

class scheduale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Scaffold(
        body: Material(
        child: Container(
           width: double.infinity,
          height: MediaQuery.of(context).size.height, 
          child: Container(
             width: double.infinity,
          height: MediaQuery.of(context).size.height, 
            decoration: BoxDecoration (
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupi5ufvT7 (F3BKc6LUjLqynpPznbi5uf)
                  padding: EdgeInsets.fromLTRB(37*fem, 0*fem, 38*fem, 0*fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // image4e8D (8:37)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 66*fem),
                        width: 353*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/page-1/images/image-4-gVT.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // group5YzH (8:53)
                        margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 13*fem, 33*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // myplantstYM (8:39)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 59*fem, 0*fem),
                              child: InkWell(
                                onTap: (){Navigator.pop(context);},
                                child: Text(
                                  'My plants',
                                  style: SafeGoogleFont (
                                    'Merriweather Sans',
                                    fontSize: 30*ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.2575*ffem/fem,
                                    color: Color(0xff6c6c6c),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // scheduleavy (8:40)
                              'Schedule',
                              style: SafeGoogleFont (
                                'Merriweather Sans',
                                fontSize: 30*ffem,
                                fontWeight: FontWeight.w300,
                                height: 1.2575*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // today16januaryXLR (8:52)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 166*fem, 26*fem),
                        child: Text(
                          'Today , 16 January',
                          style: SafeGoogleFont (
                            'Merriweather Sans',
                            fontSize: 19*ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // group6qM7 (8:59)
                        margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 17*fem),
                        height: 60*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle4ZH7 (8:54)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 4*fem),
                              width: 61*fem,
                              height: 56*fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10*fem),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-4-ERj.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              // autogroupm1b3GBX (F3BL4aaLyGV4U6zkMdM1B3)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 78*fem, 0*fem),
                              width: 155*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    // potatoleavesbDo (8:55)
                                    'Potato leaves',
                                    style: SafeGoogleFont (
                                      'Merriweather Sans',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.2575*ffem/fem,
                                      color: Color(0xff184a2c),
                                    ),
                                  ),
                                  Container(
                                    // autogroupxa3wj57 (F3BL8zcf1b6Euz6YHTxA3w)
                                    width: double.infinity,
                                    height: 37*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // alternariaofpotatoesGqj (8:56)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 155*fem,
                                              height: 19*fem,
                                              child: Text(
                                                'Alternaria of potatoes',
                                                style: SafeGoogleFont (
                                                  'Merriweather Sans',
                                                  fontSize: 15*ffem,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.2575*ffem/fem,
                                                  color: Color(0xff767676),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // score2lhaxTf (8:57)
                                          left: 0*fem,
                                          top: 18*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 91*fem,
                                              height: 19*fem,
                                              child: Text(
                                                'Score ,2L/ ha',
                                                style: SafeGoogleFont (
                                                  'Merriweather Sans',
                                                  fontSize: 15*ffem,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.2575*ffem/fem,
                                                  color: Color(0xff828282),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // rectangle5c2R (8:58)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                              width: 27*fem,
                              height: 26*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xffc8c8c8)),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group7gny (8:60)
                        margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 30*fem),
                        width: 340*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupe82hyn5 (F3BLqtcBLuAREhEEZdE82h)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                              width: double.infinity,
                              height: 60*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle4hTB (8:64)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 4*fem),
                                    width: 61*fem,
                                    height: 56*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/rectangle-4-E7X.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // autogroupmdpqboT (F3BM1JWAQkgZHM3bt7MDpq)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 106*fem, 0*fem),
                                    width: 127*fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          // pepperleavesw6d (8:61)
                                          'Pepper leaves',
                                          style: SafeGoogleFont (
                                            'Merriweather Sans',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w300,
                                            height: 1.2575*ffem/fem,
                                            color: Color(0xff184a2c),
                                          ),
                                        ),
                                        Container(
                                          // autogroupzxxxg4D (F3BM7JLAqnyi1576MHZxXX)
                                          width: double.infinity,
                                          height: 37*fem,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // fasayafsaqC1 (8:62)
                                                left: 0*fem,
                                                top: 0*fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 69*fem,
                                                    height: 19*fem,
                                                    child: Text(
                                                      'Fasayafsa',
                                                      style: SafeGoogleFont (
                                                        'Merriweather Sans',
                                                        fontSize: 15*ffem,
                                                        fontWeight: FontWeight.w300,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff767676),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // consento15lhaj2V (8:63)
                                                left: 0*fem,
                                                top: 18*fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 127*fem,
                                                    height: 19*fem,
                                                    child: Text(
                                                      'Consento ,1.5L/ha',
                                                      style: SafeGoogleFont (
                                                        'Merriweather Sans',
                                                        fontSize: 15*ffem,
                                                        fontWeight: FontWeight.w300,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff828282),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // rectangle5RR7 (8:65)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                    width: 27*fem,
                                    height: 26*fem,
                                    decoration: BoxDecoration (
                                      border: Border.all(color: Color(0xffc8c8c8)),
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group6wuF (8:66)
                              width: double.infinity,
                              height: 60*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle4Hy7 (8:70)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 4*fem),
                                    width: 61*fem,
                                    height: 56*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/rectangle-4-yJD.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // autogroupsehsPmF (F3BMcsKEahP3ddgR5SseHs)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 70*fem, 0*fem),
                                    width: 163*fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          // cornleavesioX (8:67)
                                          'Corn leaves',
                                          style: SafeGoogleFont (
                                            'Merriweather Sans',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w300,
                                            height: 1.2575*ffem/fem,
                                            color: Color(0xff184a2c),
                                          ),
                                        ),
                                        Container(
                                          // autogroupfcahfTs (F3BMgx2mVBXVhrzuK7FCaH)
                                          width: double.infinity,
                                          height: 37*fem,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // charcoalrotDVP (8:68)
                                                left: 0*fem,
                                                top: 0*fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 86*fem,
                                                    height: 19*fem,
                                                    child: Text(
                                                      'Charcoal rot',
                                                      style: SafeGoogleFont (
                                                        'Merriweather Sans',
                                                        fontSize: 15*ffem,
                                                        fontWeight: FontWeight.w300,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff767676),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // sandkor150250gdWjP (8:69)
                                                left: 0*fem,
                                                top: 18*fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 163*fem,
                                                    height: 19*fem,
                                                    child: Text(
                                                      'Sandkor ,150 - 250 g/D',
                                                      style: SafeGoogleFont (
                                                        'Merriweather Sans',
                                                        fontSize: 15*ffem,
                                                        fontWeight: FontWeight.w300,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff828282),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // rectangle5zuT (8:71)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                    width: 27*fem,
                                    height: 26*fem,
                                    decoration: BoxDecoration (
                                      border: Border.all(color: Color(0xffc8c8c8)),
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // sunday15january7jB (8:83)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 155*fem, 20*fem),
                        child: Text(
                          'Sunday , 15 January',
                          style: SafeGoogleFont (
                            'Merriweather Sans',
                            fontSize: 19*ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // group8qQH (8:84)
                        margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 26*fem),
                        height: 60*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle4xjo (8:88)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 4*fem),
                              width: 61*fem,
                              height: 56*fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10*fem),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-4.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              // autogroupxb9ffu7 (F3BLQjfReKNG41khmJXb9F)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 92*fem, 0*fem),
                              width: 141*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    // tomatoleavesokR (8:85)
                                    'Tomato leaves',
                                    style: SafeGoogleFont (
                                      'Merriweather Sans',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.2575*ffem/fem,
                                      color: Color(0xff184a2c),
                                    ),
                                  ),
                                  Container(
                                    // autogrouph9amx7X (F3BLVEXvy6b86JoKcgh9Am)
                                    width: double.infinity,
                                    height: 37*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // yellowcurl6zR (8:86)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 75*fem,
                                              height: 19*fem,
                                              child: Text(
                                                'Yellow curl',
                                                style: SafeGoogleFont (
                                                  'Merriweather Sans',
                                                  fontSize: 15*ffem,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.2575*ffem/fem,
                                                  color: Color(0xff767676),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // fluzoki10075cmcSy (8:87)
                                          left: 0*fem,
                                          top: 18*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 141*fem,
                                              height: 19*fem,
                                              child: Text(
                                                'Fluzoki ,100 - 75 cm',
                                                style: SafeGoogleFont (
                                                  'Merriweather Sans',
                                                  fontSize: 15*ffem,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.2575*ffem/fem,
                                                  color: Color(0xff828282),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupegrbiF7 (F3BLaysMYm3E2o2LKEEgRb)
                              margin: EdgeInsets.fromLTRB(0*fem, 15*fem, 0*fem, 19*fem),
                              padding: EdgeInsets.fromLTRB(2*fem, 2*fem, 1*fem, 0*fem),
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff22549f)),
                                color: Color(0xffffffff),
                              ),
                              child: Align(
                                // image16EDT (8:110)
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/image-16.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // sunday15januarywdf (8:90)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 155*fem, 20*fem),
                        child: Text(
                          'Sunday , 15 January',
                          style: SafeGoogleFont (
                            'Merriweather Sans',
                            fontSize: 19*ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupy4lmGR3 (F3BK12WaG9qb11S98XY4LM)
                        margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 20*fem),
                        height: 60*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle4CJh (8:95)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 4*fem),
                              width: 61*fem,
                              height: 56*fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10*fem),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-4-ghs.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              // autogrouptkiyJsX (F3BKAmjLTqpTRK2p9Btkiy)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 106*fem, 0*fem),
                              width: 127*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    // pepperleavesqMf (8:92)
                                    'Pepper leaves',
                                    style: SafeGoogleFont (
                                      'Merriweather Sans',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.2575*ffem/fem,
                                      color: Color(0xff184a2c),
                                    ),
                                  ),
                                  Container(
                                    // autogroup4jkvyTs (F3BKFGbqnd3KTc5Rza4JkV)
                                    width: double.infinity,
                                    height: 37*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // fasayafsaL3X (8:93)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 69*fem,
                                              height: 19*fem,
                                              child: Text(
                                                'Fasayafsa',
                                                style: SafeGoogleFont (
                                                  'Merriweather Sans',
                                                  fontSize: 15*ffem,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.2575*ffem/fem,
                                                  color: Color(0xff767676),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // consento15lhaRqf (8:94)
                                          left: 0*fem,
                                          top: 18*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 127*fem,
                                              height: 19*fem,
                                              child: Text(
                                                'Consento ,1.5L/ha',
                                                style: SafeGoogleFont (
                                                  'Merriweather Sans',
                                                  fontSize: 15*ffem,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.2575*ffem/fem,
                                                  color: Color(0xff828282),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupkee9Kw3 (F3BKMw5QVLFvvdhXr6kEe9)
                              margin: EdgeInsets.fromLTRB(0*fem, 15*fem, 0*fem, 19*fem),
                              padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                              width: 27*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff22549f)),
                                color: Color(0xffffffff),
                              ),
                              child: Align(
                                // image18qeV (8:112)
                                alignment: Alignment.bottomLeft,
                                child: SizedBox(
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/image-18.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group10MMw (8:103)
                        margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 0*fem),
                        height: 60*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle4gf7 (8:107)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 4*fem),
                              width: 61*fem,
                              height: 56*fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10*fem),
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-4-VZX.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              // autogroupykokBrm (F3BN8rTGjtroEFysRKyKoK)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 78*fem, 0*fem),
                              width: 155*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    // potatoleaves81K (8:104)
                                    'Potato leaves',
                                    style: SafeGoogleFont (
                                      'Merriweather Sans',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.2575*ffem/fem,
                                      color: Color(0xff184a2c),
                                    ),
                                  ),
                                  Container(
                                    // autogroupdfmpG7X (F3BNEmT5tUYGMa6XxxdfMP)
                                    width: double.infinity,
                                    height: 37*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // alternariaofpotatoeschB (8:105)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 155*fem,
                                              height: 19*fem,
                                              child: Text(
                                                'Alternaria of potatoes',
                                                style: SafeGoogleFont (
                                                  'Merriweather Sans',
                                                  fontSize: 15*ffem,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.2575*ffem/fem,
                                                  color: Color(0xff767676),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // score2lhaK5o (8:106)
                                          left: 0*fem,
                                          top: 18*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 91*fem,
                                              height: 19*fem,
                                              child: Text(
                                                'Score ,2L/ ha',
                                                style: SafeGoogleFont (
                                                  'Merriweather Sans',
                                                  fontSize: 15*ffem,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.2575*ffem/fem,
                                                  color: Color(0xff828282),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
             
              ],
            ),
          ),
              ),
      ),
      ),
    );
  }
}