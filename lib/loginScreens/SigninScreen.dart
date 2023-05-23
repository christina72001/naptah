import 'package:flutter/material.dart';
import 'package:naptah/loginScreens/SignupScreen.dart';
import 'package:naptah/loginScreens/ForgetPassword.dart';
import 'package:naptah/Home/homePage.dart';

import '../Home/bottom_bar.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = "";
  String password = "";
  bool isPasswordHidden = true;
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: InkWell(
          onTap: () {
            emailFocusNode.unfocus();
            passwordFocusNode.unfocus();
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Image(
                    height: 130,
                    width: 130,
                    image: AssetImage(
                      'assets/naptahPng.png',
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                  child: TextFormField(
                    focusNode: emailFocusNode,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 3, color: Color(0xff184A2C)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: const Color(0xffebfdf2)),
                      ),
                      hintText: 'Email',
                      filled: true,
                      fillColor: Color(0xffEBFDF2),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Color(0xff184A2C),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                  child: TextFormField(
                    focusNode: passwordFocusNode,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isPasswordHidden,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 3, color: Color(0xff184A2C)),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: const Color(0xffebfdf2),
                        ),
                      ),

                      hintText: 'Password',
                      filled: true,
                      fillColor: Color(0xffEBFDF2),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color(0xff184A2C),
                      ),
                      suffixIcon: IconButton(
                        color: Color(0xff184A2C),
                        onPressed: () {
                          isPasswordHidden = !isPasswordHidden;
                          setState(() {});
                        },
                        icon: Icon(
                            color: Color(0xff184A2C),
                            isPasswordHidden
                                ? Icons.visibility
                                : Icons.visibility_off),
                      ),
                      // border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Text("Don't have an account?"),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgetPassword()),
                          );
                        },
                        child: Text(
                          'Forget PassWord ?',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 350,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xff184A2C),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomBar()),
                        );
                      },
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()),
                        );
                      },
                      child: Text('Register Now'),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170),
                  child: Image(
                    width: 420,
                    height: 270,
                    image: AssetImage(
                      'assets/try33.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
