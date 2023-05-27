import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/utils.dart';

class last extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // iphone14plus4p4m (8:113)
        padding: EdgeInsets.fromLTRB(37*fem, 0*fem, 35*fem, 203*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // image4iA9 (8:114)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 35*fem),
              width: 353*fem,
              height: 19*fem,
              child: Image.asset(
                'assets/page-1/images/image-4-Czy.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // autogroupzgv9S69 (F3BHeu665imGTkm7C9Zgv9)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 49*fem),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // image19mPK (8:128)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 4*fem),
                    width: 23*fem,
                    height: 23*fem,
                    child: Image.asset(
                      'assets/page-1/images/image-19.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // editprofileJPF (8:158)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 165*fem, 0*fem),
                    child: Text(
                      'Edit Profile',
                      style: SafeGoogleFont (
                        'Merriweather Sans',
                        fontSize: 21*ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.2575*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // image20Bxq (8:130)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                    width: 33*fem,
                    height: 32*fem,
                    child: Image.asset(
                      'assets/page-1/images/image-20.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupjyptuP3 (F3BHqowaFqMhBqbM8RjyPT)
              margin: EdgeInsets.fromLTRB(116*fem, 0*fem, 105*fem, 72*fem),
              width: double.infinity,
              height: 122*fem,
              child: Stack(
                children: [
                  Positioned(
                    // ellipse2dK3 (8:131)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 122*fem,
                        height: 122*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(61*fem),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/page-1/images/ellipse-2-bg.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse3fmX (8:132)
                    left: 89*fem,
                    top: 76*fem,
                    child: Align(
                      child: SizedBox(
                        width: 46*fem,
                        height: 46*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(23*fem),
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // icons8camera1001NA9 (8:133)
                    left: 100*fem,
                    top: 91*fem,
                    child: Align(
                      child: SizedBox(
                        width: 23*fem,
                        height: 17*fem,
                        child: Image.asset(
                          'assets/page-1/images/icons8-camera-100-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group11gRj (8:139)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(30*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // usernameQsX (8:137)
                    margin: EdgeInsets.fromLTRB(23*fem, 0*fem, 0*fem, 8*fem),
                    child: Text(
                      'User Name',
                      style: SafeGoogleFont (
                        'Merriweather Sans',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.2575*ffem/fem,
                        color: Color(0xff696969),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupto7bvqs (F3BJ8U8V1cQDrQebmFTo7b)
                    padding: EdgeInsets.fromLTRB(36*fem, 17*fem, 36*fem, 16*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xfff9f9f9),
                      borderRadius: BorderRadius.circular(30*fem),
                    ),
                    child: Text(
                      'Duha EL_Shirbiney',
                      style: SafeGoogleFont (
                        'Merriweather Sans',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.2575*ffem/fem,
                        color: Color(0xff403e3e),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group12PzM (8:140)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
              width: double.infinity,
              height: 78*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(30*fem),
              ),
              child: Container(
                // group11LPo (8:144)
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(30*fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // emailaddressGoF (8:146)
                      margin: EdgeInsets.fromLTRB(23*fem, 0*fem, 0*fem, 8*fem),
                      child: Text(
                        'Email Address',
                        style: SafeGoogleFont (
                          'Merriweather Sans',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.2575*ffem/fem,
                          color: Color(0xff696969),
                        ),
                      ),
                    ),
                    Container(
                      // autogrouprww7aow (F3BJahsmQACFkTQsZeRWw7)
                      padding: EdgeInsets.fromLTRB(36*fem, 17*fem, 36*fem, 16*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xfff9f9f9),
                        borderRadius: BorderRadius.circular(30*fem),
                      ),
                      child: Text(
                        'dohaatef102@gmail.com',
                        style: SafeGoogleFont (
                          'Merriweather Sans',
                          fontSize: 12*ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.2575*ffem/fem,
                          color: Color(0xff403e3e),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // group13Ggm (8:148)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(30*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // phonenumberogh (8:150)
                    margin: EdgeInsets.fromLTRB(23*fem, 0*fem, 0*fem, 8*fem),
                    child: Text(
                      'Phone Number',
                      style: SafeGoogleFont (
                        'Merriweather Sans',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.2575*ffem/fem,
                        color: Color(0xff696969),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupuq7pvmK (F3BJSxbg1Uyma4W2i3UQ7P)
                    padding: EdgeInsets.fromLTRB(36*fem, 17*fem, 36*fem, 16*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xfff9f9f9),
                      borderRadius: BorderRadius.circular(30*fem),
                    ),
                    child: Text(
                      '01095304046',
                      style: SafeGoogleFont (
                        'Merriweather Sans',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.2575*ffem/fem,
                        color: Color(0xff403e3e),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group141nm (8:152)
              width: double.infinity,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(30*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // passwordN7X (8:154)
                    margin: EdgeInsets.fromLTRB(23*fem, 0*fem, 0*fem, 8*fem),
                    child: Text(
                      'Password',
                      style: SafeGoogleFont (
                        'Merriweather Sans',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.2575*ffem/fem,
                        color: Color(0xff696969),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupewxoHEV (F3BJGYjMY85SQTLkK2eWXo)
                    padding: EdgeInsets.fromLTRB(36*fem, 15*fem, 32*fem, 14*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xfff9f9f9),
                      borderRadius: BorderRadius.circular(30*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // zeh (8:155)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 183*fem, 0*fem),
                          child: Text(
                            '***********',
                            style: SafeGoogleFont (
                              'Merriweather Sans',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w300,
                              height: 1.2575*ffem/fem,
                              color: Color(0xff403e3e),
                            ),
                          ),
                        ),
                        Container(
                          // image22vHT (8:157)
                          width: 25*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-1/images/image-22.png',
                            fit: BoxFit.cover,
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
          );
  }
}