
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:naptah/mainPage/Home/homePage.dart';
import 'package:naptah/loginScreens/SigninScreen.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  late File image;
// ignore: non_constant_identifier_names
  final Imagepicker = ImagePicker();

  cameraImage() async {
    var pickedImage = await Imagepicker.getImage(source: ImageSource.camera);
  }

  galleryImage() async {
    var pickedImage = await Imagepicker.getImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroun

      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/ground.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //back_button

            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: GestureDetector(
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 30,
                  
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                
              ),
            ),

            //blured_view
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: 340,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 3, color: Colors.white),
                  ),
                ),
              ),
            ),

            //camera&gallery&flasher

            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: galleryImage,
                      child: Image(
                        image: AssetImage('assets/image.png'),
                      )),
                  SizedBox(
                    width: 45,
                  ),
                  GestureDetector(
                      onTap: cameraImage,
                      child: Image(
                        image: AssetImage('assets/Group 48.png'),
                      )),
                  SizedBox(
                    width: 45,
                  ),
                  GestureDetector(
                      child: Image(
                    image: AssetImage('assets/flash.png'),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
