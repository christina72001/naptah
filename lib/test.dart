// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:naptah/mainPage/Home/homePage.dart';
// import 'package:image_picker/image_picker.dart';

// class scanningPage extends StatefulWidget {
//   const scanningPage({super.key});

//   @override
//   State<scanningPage> createState() => _scanningPageState();
// }

// class _scanningPageState extends State<scanningPage> {
//    File image;
//   final picker = ImagePicker();

//   Future getImage() async {
//     final pickedFile = await picker.getImage(source: ImageSource.camera);
//      setState(() {
//       if (pickedFile != null) {
//         _image = File(pickedFile.path);
//       } else {
//         print('No image selected.');
//       }
//     });
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//           elevation: 0,
//           leading: Container(
//             width: 4,
//             height: 4,
//             decoration: const BoxDecoration(
//                 shape: BoxShape.circle, color: Color(0xffF9F9F9)),
//             child: IconButton(
//               icon: Icon(Icons.arrow_back_ios),
//               color: Color(0xff707070),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const HomePage()),
//                 );
//               },
//             ),
//           ),
//       ),
//       body: Center(
//         child: _image == null
//             ? Text('No image selected.')
//             : Container(
//                 height: 300,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: FileImage(_image),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: getImage,
//         tooltip: 'Pick Image',
//         child: Icon(Icons.camera),
//       ),

//     );
//   }
// }