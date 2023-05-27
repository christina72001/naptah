import 'dart:io';
import 'package:http/http.dart' as http;

class ScanService {
  static Future<String> scanImage(File imageFile) async {
    final request = http.MultipartRequest("POST", Uri.parse("https://khaled27-naptah.hf.space/upload_image"));
    request.files.add(await http.MultipartFile.fromPath('image', imageFile.path));

    final response = await request.send();

    if (response.statusCode == 200) {
      final responseText = await response.stream.bytesToString();
      return responseText;
    } else {
      return 'Image upload failed!';
    }
  }
}
