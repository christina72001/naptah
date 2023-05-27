import 'dart:io';
import 'package:flutter/material.dart';
import 'package:naptah/Home/homePage.dart';
import 'package:naptah/Scanning/disease&treatment.dart';
import 'package:naptah/Scanning/scan_result.dart';
import 'package:naptah/socialCommunity/Experts/premiumPage.dart';
import 'package:naptah/My_Plant/schedule.dart';
import 'package:naptah/socialCommunity/homePage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

import '../Scanning/scanServices.dart';

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  File? _imageFile;
  String _responseText = '';
  bool _scanning = false;

  int _currentIndex = 0;
  List<Widget> tabs = [
    const HomePage(),
    const schedule(),
    const HomePageCommunity(),
    const premiumPage()
  ];
  Future<void> _selectImage() async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.camera),
                title: Text('Camera'),
                onTap: () {
                  Navigator.of(context).pop(ImageSource.camera);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Gallery'),
                onTap: () {
                  Navigator.of(context).pop(ImageSource.gallery);
                },
              ),
            ],
          ),
        );
      },
    ).then((dialogResult) async {
      if (dialogResult == null) {
        return;
      }

      final imageFile = await ImagePicker().pickImage(source: dialogResult);
      if (imageFile == null) {
        return;
      }

      setState(() {
        _imageFile = File(imageFile.path);
        _scanning = true;
      });

      final responseText = await ScanService.scanImage(_imageFile!);

      setState(() {
        _responseText = responseText;
        _scanning = false;
      });

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ScanResult(
            imageFile: _imageFile!,
            responseText: _responseText,
            scanning: _scanning,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:
            _scanning ? null : _selectImage, // Disable button while scanning
        backgroundColor: Color(0xff184A2C),
        child: _scanning
            ? CircularProgressIndicator(color: Color(0xff184A2C),) // Show CircularProgressIndicator while scanning
            : Image.asset(
                'assets/bottomIcon/camera_Icon.png',
                width: 40,
                height: 40,
              ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        elevation: 60.0,
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 70.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
            color: Colors.white,
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            selectedItemColor: Color(0xff184A2C),
            unselectedItemColor: Color(0xff707070),
            iconSize: 40,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              _currentIndex = index;
              setState(() {});
            },
            items: [
              const BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/home_Icon.png")),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons8-plant-100.png")),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/group-users.png")),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  children: const [
                    ImageIcon(AssetImage("assets/user (3).png")),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Icon(
                        Icons.star,
                        color: Color(0xffFFC107),
                        size: 26,
                      ),
                    ),
                  ],
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
      body: tabs[_currentIndex],
    );
  }
}
