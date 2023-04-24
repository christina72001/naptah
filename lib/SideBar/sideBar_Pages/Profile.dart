// import 'dart:math';
// import 'package:naptah/loginScreens/SignupScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naptah/Home/homePage.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isPasswordHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          //
          title: Padding(
            padding: EdgeInsets.only(left: 10.r),
            child: Text('Profile',
                style:
                    TextStyle(fontSize: 26.sp, color: const Color(0xff184A2C))),
          ),
          //
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
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.only(right: 15),
          //     child: IconButton(
          //       icon: const Icon(Icons.done),
          //       color: const Color(0xff86A49B),
          //       iconSize: 45,
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => const HomePage()),
          //         );
          //       },
          //     ),
          //   ),
          // ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, top: 20, right: 15).r,
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Center(
                  child: Stack(
                    children: [
                      //user photo
                      Container(
                        width: 140.w,
                        height: 140.h,
                        decoration: BoxDecoration(
                          border: Border.all(width: 4.w, color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2.r,
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10),
                          ],
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/p.jpg'),
                          ),
                        ),
                      ),

                      //edit
                      Positioned(
                        bottom: 0.r,
                        right: 0.r,
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 4.w, color: Colors.white),
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.photo_camera,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Text(
                    'Mohmd Adel',
                    style: GoogleFonts.merriweatherSans(
                      fontSize: 22.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),

                //
                Padding(
                  padding: EdgeInsets.all(12.w),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 20.r),
                          child: TextFormField(
                            cursorColor: Color(0xff6b6e70),
                            //
                            decoration: InputDecoration(
                              //
                              hintText: 'Name',
                              filled: true,
                              fillColor: Color(0xffDBDBDB),
                              //
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.w),
                                borderSide: BorderSide(
                                    width: 3.w, color: Colors.transparent),
                              ),
                              //
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.w),
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                              ),
                              //
                            ),
                          ),
                        ),
                        //Email
                        Padding(
                          padding: EdgeInsets.only(bottom: 20.r),
                          child: TextFormField(
                            cursorColor: const Color(0xff6b6e70),
                            decoration: InputDecoration(
                              //
                              hintText: 'Mail',
                              filled: true,
                              fillColor: const Color(0xffDBDBDB),
                              //
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.w),
                                borderSide: BorderSide(
                                    width: 3.w, color: Colors.transparent),
                              ),
                              //
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.w),
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20.r),
                          child: TextFormField(
                            cursorColor: const Color(0xff6b6e70),
                            decoration: InputDecoration(
                              //
                              hintText: 'Phone number',
                              filled: true,
                              fillColor: const Color(0xffDBDBDB),
                              //
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.w),
                                borderSide: BorderSide(
                                    width: 3.w, color: Colors.transparent),
                              ),
                              //
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.w),
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                              ),
                            ),
                          ),
                        ),

                        //password

                        TextFormField(
                          cursorColor: const Color(0xff6b6e70),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: isPasswordHidden,
                          decoration: InputDecoration(
                            //
                            hintText: 'password',
                            filled: true,
                            fillColor: const Color(0xffDBDBDB),
                            //
                            suffixIcon: IconButton(
                              color: const Color(0xff6b6e70),
                              onPressed: () {
                                isPasswordHidden = !isPasswordHidden;
                                setState(() {});
                              },
                              icon: Icon(isPasswordHidden
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                            //
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.w),
                              borderSide: BorderSide(
                                  width: 3.w, color: Colors.transparent),
                            ),
                            //
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.w),
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
