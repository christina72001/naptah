import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/Home/bottom_bar.dart';
import 'package:naptah/Scanning/scanServices.dart';
import 'disease&treatment.dart';


class ScanResult extends StatefulWidget {
  final File imageFile;
  final String responseText;
  final bool scanning;

  ScanResult({
    required this.imageFile,
    required this.responseText,
    required this.scanning,
  });

  @override
  _ScanResultState createState() => _ScanResultState();
}

class _ScanResultState extends State<ScanResult> {
  Future<String>? _scanImageFuture;

  @override
  void initState() {
    super.initState();
    if (widget.scanning) {
      _scanImageFuture = _scanImage(widget.imageFile);
    }
  }

  Future<String> _scanImage(File imageFile) async {
    final responseText = await ScanService.scanImage(imageFile);
    return responseText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Scan Result",
          style: GoogleFonts.merriweatherSans(
            fontSize: 20,
            color: Color(0xff184A2C),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BottomBar()),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff707070),
            size: 30,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (widget.imageFile != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.file(
                  widget.imageFile,
                  height: 200,
                ),
              ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            if (widget.scanning)
              _scanImageFuture != null
                  ? FutureBuilder<String>(
                      future: _scanImageFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return CircularProgressIndicator(color: Color(0xff184A2C),);
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          final responseText = snapshot.data;
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.92,
                            decoration: BoxDecoration(
                              color: Color(0xffE7E7E7),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.file(
                                      widget.imageFile,
                                      height: MediaQuery.of(context)
                                              .size
                                              .height *
                                          0.1,
                                    ),
                                  ),
                                  Text(responseText ?? ''),
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff184A2C),
                                    ),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                diseaseANDtreatment(
                                              imageFile: widget.imageFile,
                                              responseText: responseText ?? '',
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                      },
                    )
                  : CircularProgressIndicator(color: Color(0xff184A2C),)
            else
              Container(
                width: MediaQuery.of(context).size.width * 0.92,
                decoration: BoxDecoration(
                  color: Color(0xffE7E7E7),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.file(
                          widget.imageFile,
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                      ),
                      Text(widget.responseText),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff184A2C),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => diseaseANDtreatment(
                                  imageFile: widget.imageFile,
                                  responseText: widget.responseText,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
