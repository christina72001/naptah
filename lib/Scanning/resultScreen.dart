import 'dart:io';
import 'package:flutter/material.dart';
import 'package:naptah/Home/bottom_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:tflite/tflite.dart';
import 'RecommendationSreen.dart';
import 'package:image_picker/image_picker.dart';

class resultScreen extends StatefulWidget {

  final File? image;

  resultScreen({this.image});

  @override
  State<resultScreen> createState() => _resultScreenState();
}

bool clicked = true;

class _resultScreenState extends State<resultScreen> {
  late bool _loading;
  late File _image;
  List<dynamic> _outputs = [];

  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _loading = true;
    _image = widget.image!;
    
    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  loadModel() async {
    try {
      await Tflite.loadModel(
        labels: "assets/labels.txt",
        model: "assets/model_unquant.tflite",
      );

      classifiyImage(_image);
    } catch (c) {
      print('An error occurred while loading the model: $c');
    }
  }
//بيقفل 
  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  // getImage() async {
  //   final pickedFile = await picker.getImage(source: ImageSource.camera);
  //   if (pickedFile == null) return null;
  //   setState(() {
  //     _loading = true;
  //     _image = File(pickedFile.path);
  //   });
  //   classifiyImage(_image);
  // }

  classifiyImage(File image) async {
    try {
      var output = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 14,
        threshold: 0.5,
        imageMean: 127.5,
        imageStd: 127.5,
      );
      setState(() {
        _loading = false;
        _outputs = output!;
      });
    } catch (c) {
      print('An error occurred while classifying the image: $c');
    }
  }

  @override
  Widget build(BuildContext context) {
    final result = _outputs != null && _outputs!.isNotEmpty
        ? _outputs![0]['label']
        : 'No result';
    print("result:$result");

    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          iconSize: 30,
          padding: EdgeInsets.only(top: 9, left: 22),
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xff184A2C),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BottomBar()),
            );
          },
        ),
        title: Padding(
          padding: EdgeInsets.only(top: 9, left: 22),
          child: Text(
            "scanning result",
            style: TextStyle(color: Color(0xff184A2C), fontSize: 26),
          ),
        ),
      ),
      body: _loading
          ? Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _image == null
                        ? Container(
                            alignment: Alignment.center,
                            child: Text(
                              "no image Choosen !",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 9),
                            child: Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Container(
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.height * 0.24,
                                  child: Image.file(_image),
                                ),
                              ),
                            ),
                          ),
                    _outputs != null && _outputs!.isNotEmpty
                        ? Column(
                            children: [
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    color: Color(0xffD9D8D8),
                                  ),
                                  height: 34,
                                  margin: EdgeInsets.symmetric(vertical: 9),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          clicked = !clicked;

                                          setState(() {});
                                        },
                                        child: Chip(
                                          backgroundColor: clicked
                                              ? Color(0xff184A2C)
                                              : Color(0xffD9D8D8),
                                          label: Text(
                                            "   About the disease   ",
                                            style: TextStyle(
                                              color: clicked
                                                  ? Colors.white
                                                  : Color(0xff184A2C),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            clicked = !clicked;

                                            setState(() {});
                                          },
                                          child: Chip(
                                              backgroundColor: clicked
                                                  ? Color(0xffD9D8D8)
                                                  : Color(0xff184A2C),
                                              label: Text(
                                                "        Health Care         ",
                                                style: TextStyle(
                                                  color: clicked
                                                      ? Color(0xff184A2C)
                                                      : Colors.white,
                                                ),
                                              ))),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "${_outputs![0]["label"]}",
                                    // .replaceAll(RegExp(r'[0-9]+'), ''),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    background: Paint()..color = Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 22),
                              clicked
                                  ? Text("")
                                  : Center(
                                      child: Container(
                                        // width: MediaQuery.of(context).size.height*0.9,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(22),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(6.0),
                                              child: Image.asset(
                                                  "assets/marj.png"),
                                            ),
                                            Text(
                                              "Recommended Treatment",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(6.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xff184A2C)),
                                                child: IconButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  recommendationScreen()));
                                                    },
                                                    icon: Icon(
                                                      Icons.arrow_forward,
                                                      color: Colors.white,
                                                      size: 24,
                                                    )),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                              SizedBox(height: 22)
                            ],
                          )
                        : Container(
                            alignment: Alignment.center,
                            child: CircularProgressIndicator(),
                          )
                  ],
                ),
              ),
            ),
    );
  }
}
