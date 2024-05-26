import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;

Widget buildUploadDocument(String hint, String label, String uploadURL, Function(bool) onUploadStatusChange){
  return InkWell(
    onTap: () => _pickAndUploadFile(uploadURL, onUploadStatusChange),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.rtl,
      children:[ 
                Text(label, style: const TextStyle(
                                            fontFamily: 'Baloo',
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold
                                          ),
                ),
        Container(
        width: 317,
        height: 55,
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFB2A4FF)),
          borderRadius: BorderRadius.circular(15.0)
        ),
        child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8.0),
                const Icon(Icons.add, color: Color(0xFFB2A4FF)),
                const SizedBox(width: 12),
                Text(hint, style: const TextStyle(color: Colors.grey, fontSize: 16, fontFamily: 'Baloo'),)
              ],
            ),
        ),
      ],
    ),
  );

}

Future <void> _pickAndUploadFile(String uploadURL, Function(bool) onUploadStatusChange,) async {
  FilePickerResult? result = await FilePicker.platform.pickFiles();

  if(result != null) {
    PlatformFile file = result.files.first;
    try {
      await _uploadFile(uploadURL, file.path!);
      onUploadStatusChange(true);
    }catch (e) {
      onUploadStatusChange(false);
    }
  }else {
    onUploadStatusChange(false);
  }
}

Future<void> _uploadFile(String url, String filePath) async {
  var request = http.MultipartRequest('POST', Uri.parse(url));
  request.files.add(await http.MultipartFile.fromPath('file', filePath));
  var response = await request.send();
  if(response.statusCode != 200){
    throw Exception('failed to upload file');
  }
}


