import 'package:flutter/material.dart';
import 'package:naptah/loginScreens/SigninScreen.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  String email = "";
  FocusNode emailFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: InkWell(
          onTap: () {
            emailFocusNode.unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 18),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 59),
                  child: Text('Forget Your Password?',
                      style: TextStyle(fontSize: 26, color: Color(0xff184A2C))),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 19),
                  child: Text('No worries, we will send you reset instructions',
                      style: TextStyle(fontSize: 16, color: Color(0xff000000))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 59),
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
                      hintText: 'abc_123@gmail.com',
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
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    width: 400,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xff184A2C),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
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
                  child: const Text(
                    'Back to log in',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xff184A2C),
                      fontWeight: FontWeight.bold,
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
