import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class ImageUploader extends StatefulWidget {
  @override
  _ImageUploaderState createState() => _ImageUploaderState();
}

class _ImageUploaderState extends State<ImageUploader> {
  String _result = '';

Future<String> uploadImage(String imagePath) async {
  try {
    var dio = Dio();
    var apiUrl = 'https://khaled27-naptah.hf.space/upload_image';
    var formData = FormData.fromMap({'image': await MultipartFile.fromFile(imagePath)});

    var response = await dio.post(apiUrl, data: formData);
    var parsedResponse = response.data;

    print(parsedResponse); // Print the parsed response

    return parsedResponse['result'].toString();
  } catch (e) {
    throw Exception('Error uploading image: $e');
  }
}



  Future<void> processImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: source);

    if (pickedImage != null) {
      try {
        setState(() {
          _result = 'Processing...';
        });

        String result = await uploadImage(pickedImage.path);
        setState(() {
          _result = result;
        });
      } catch (e) {
        setState(() {
          _result = 'Error: $e';
          print('Error: $e');
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => processImage(ImageSource.gallery),
          child: Text('Select Image'),
        ),
        ElevatedButton(
          onPressed: () => processImage(ImageSource.camera),
          child: Text('Take Picture'),
        ),
        SizedBox(height: 20),
        Text(_result,style: TextStyle(color: Color(0xff707070),fontSize: 18),),
        
      ],
    );
  }
}


// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:image_picker/image_picker.dart';
// import 'package:naptah/Scanning/resultScreen.dart';

// class camera extends StatefulWidget {
//   const camera({super.key});

//   @override
//   State<camera> createState() => _cameraState();
// }

// class _cameraState extends State<camera> {
//   late File _image;

//   File? _imageFile;
//   String receivedText = '';
//   final picker = ImagePicker();

//   Future getImage() async {
//     final pickedFile = await picker.getImage(source: ImageSource.gallery);

//     setState(() {
//       if (pickedFile != null) {
//         _imageFile = File(pickedFile.path);
//       }
//     });
//   }

//   Future uploadImage(String imagePath) async {
//     if (_imageFile != null) {
//       var request = http.MultipartRequest(
//         'POST',
//         Uri.parse('http://192.168.1.7:5000/upload_image'),
//       );
//       request.files.add(
//         await http.MultipartFile.fromPath(
//           'image',
//           _imageFile!.path,
//         ),
//       );

//       var response = await request.send();

//       if (response.statusCode == 200) {
//         print('Image uploaded successfully');
//       } else {
//         print('Image upload failed');
//       }
//     }
//   }

//   Future<void> fetchText() async {
//     var url = Uri.parse(
//         'https://khaled27-naptah.hf.space/upload_image'); // Replace with your Python API URL

//     var response = await http.get(url);

//     if (response.statusCode == 200) {
//       setState(() {
//         receivedText = response.body; // Update the received text variable
//       });
//     } else {
//       print('Failed to fetch text');
//     }
//   }

//   String _result = '';
//   Future<void> processImageGallery() async {
//     final pickedImage = await picker.getImage(source: ImageSource.gallery);
//     if (pickedImage != null) {
//       setState(() {
//         _result = 'Processing...';
//       });
//       String result = await uploadImage(pickedImage.path);
//       setState(() {
//         _result = result;
//       });}}
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             _imageFile != null
//                 ? Image.file(
//                     _imageFile!,
//                     width: 300,
//                     height: 300,
//                   )
//                 : Text('No image selected.'),

//             ElevatedButton(
//               onPressed: () async {
//                 final pickedFile =
//                     await picker.getImage(source: ImageSource.gallery);
//                 if (pickedFile != null) {
//                   setState(() {
//                     _image = File(pickedFile.path);
//                   });

//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => resultScreen(image: _image)),
//                   );
//                 }
//               },
//               child: Text('Gallery'),
//             ),

//             ElevatedButton(
//               onPressed: () async {
//                 final pickedFile =
//                     await picker.getImage(source: ImageSource.camera);
//                 if (pickedFile != null) {
//                   setState(() {
//                     _image = File(pickedFile.path);
//                   });

//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => resultScreen(image: _image)),
//                   );
//                 }
//               },
//               child: Text('Camera'),
//             ),
//             // ElevatedButton(
//             //   onPressed:
//             //   fetchText,
//             //   child: Text("fetch text"),
//             // ),
//             Text(receivedText),
//           ],
//         ),
//       ),
//     );
//   }
// }
