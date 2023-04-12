import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/Home/homePage.dart';
import 'package:naptah/loginScreens/SignupScreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  bool isLastPage = false;
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget Pages({
    required String image,
    required String title,
    required String description,
  }) =>
      Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              title,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Color(0xff184A2C), fontSize: 40),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              description,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Color(0xff060706),
                  fontSize: 21,
                ),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.topRight,
          children: [
            PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() => isLastPage = index == 2);
              },
              children: [
                Pages(
                    image: 'assets/first.png',
                    title: 'Diagnosis',
                    description:
                        ' Plant disease and information about this disease are identified through the symptoms on it.'),
                Pages(
                    image: 'assets/second.png',
                    title: 'Treatment',
                    description:
                        'We provide a plant treatment that helps to solve the infected disease, and local production is easy to obtain.'),
                Pages(
                    image: "assets/third.png",
                    title: 'Care',
                    description:
                        'We provide a plan and appropriate methods for plant care and better production.'),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 390,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 70),
                  child: isLastPage
                      ? Center(
                          child: Column(
                            children: [
                              Container(
                                height: 58,
                                width: 291,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadiusDirectional.circular(22),
                                        border: Border.all(
                                      color: Color(0xff184A2C),
                                      width: 2.5,
                                    ),),
                                child: TextButton(
                                  onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
                                  child: Text(
                                    "Get Started",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Color(0xff184A2C),
                                          fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 58,
                                width: 291,
                                decoration: BoxDecoration(
                                    
                                    color: Color(0xff184A2C),
                                    borderRadius:
                                        BorderRadiusDirectional.circular(22),
                                    ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const SignUp()),
                                    );
                                  },
                                  child: Text(
                                    "Log In",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SmoothPageIndicator(
                                    controller: controller,
                                    count: 3,
                                    axisDirection: Axis.horizontal,
                                    effect: ExpandingDotsEffect(
                                      spacing: 8.0,
                                      dotWidth: 10.0,
                                      dotHeight: 10,
                                      paintStyle: PaintingStyle.fill,
                                      strokeWidth: 2,
                                      dotColor: Color(0xffCFCDCD),
                                      activeDotColor: Color(0xff184A2C),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Center(
                              child: Container(
                                height: 58,
                                width: 291,
                                decoration: BoxDecoration(
                                    color: Color(0xff184A2C),
                                    borderRadius:
                                        BorderRadiusDirectional.circular(22)),
                                child: TextButton(
                                  onPressed: () => controller.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeIn),
                                  child: Text(
                                    "Next",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Colors.white, fontSize: 25),
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
          ],
        ),
      ),
    );
  }
}
//
