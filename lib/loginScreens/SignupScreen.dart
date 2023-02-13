import 'package:flutter/material.dart';
import 'package:naptah/loginScreens/SigninScreen.dart';
import 'package:naptah/mainPage/Home/homePage.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isPasswordHidden = true;

  String email = "";
  String password = "";
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode usernameFocusNode = FocusNode();
  FocusNode Phonenumber = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: InkWell(
          onTap: () {
            emailFocusNode.unfocus();
            passwordFocusNode.unfocus();
            Phonenumber.unfocus();
            usernameFocusNode.unfocus();
          },
          child: Column(
            children: [
              //image
              // Padding(
              //   padding: const EdgeInsets.only(left: 100),
              //   child: Image(
              //     height: 140,
              //     // alignment: Alignment.topRight,
              //     image: AssetImage(
              //       'assets/try2.png',
              //     ),
              //   ),
              // ),

              //logo
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

              // User Name
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                child: TextFormField(
                  focusNode: usernameFocusNode,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(width: 3, color: Color(0xff184A2C)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: const Color(0xffebfdf2)),
                    ),
                    hintText: 'User Name',
                    filled: true,
                    fillColor: Color(0xffEBFDF2),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color(0xff184A2C),
                    ),
                  ),
                ),
              ),

              //Phone Number
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                child: TextFormField(
                  focusNode: Phonenumber,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(width: 3, color: Color(0xff184A2C)),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: const Color(0xffebfdf2)),
                    ),
                    // ignore: prefer_const_constructors

                    hintText: 'Phone Number',
                    filled: true,
                    fillColor: Color(0xffEBFDF2),
                    prefixIcon: const Icon(
                      Icons.phone,
                      color: Color(0xff184A2C),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),

              //Email
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                child: TextFormField(
                  focusNode: emailFocusNode,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(width: 3, color: Color(0xff184A2C)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: const Color(0xffebfdf2)),
                    ),

                    hintText: 'Email',
                    filled: true,
                    fillColor: Color(0xffEBFDF2),
                    //  keyboardType:TextInputType.emailAddress,

                    prefixIcon: const Icon(
                      Icons.email,
                      color: Color(0xff184A2C),
                    ),
                  ),
                ),
              ),

              //password

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
                      borderSide:
                          const BorderSide(width: 3, color: Color(0xff184A2C)),
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

              //SignUp_BUTTON
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
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
            },
                    child: const Text(
                      'Sign up',
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
                  const Text('already have an account?'),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    },
                    child: const Text('Sign In'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
