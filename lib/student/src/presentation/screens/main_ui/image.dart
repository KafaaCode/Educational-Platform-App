import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';
import 'dart:io';

class UploadImagePage extends StatefulWidget {
  @override
  _UploadImagePageState createState() => _UploadImagePageState();
}

class _UploadImagePageState extends State<UploadImagePage> {
  File? _image;
  final Dio _dio = Dio();

  // استخدام ImagePicker لاختيار الصورة
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected');
      }
    });
  }

  // رفع الصورة إلى الخادم باستخدام Dio
  Future<void> _uploadImage() async {
    if (_image == null) return;

    final String url =
        'http://yourdomain.com/api/upload-image'; // رابط API الخاص بك

    try {
      FormData formData = FormData.fromMap({
        'user_id': 'your_user_id', // إذا كنت بحاجة إلى إرسال معلمات إضافية
        'image': await MultipartFile.fromFile(_image!.path),
      });

      final response = await _dio.post(
        url,
        data: formData,
        options: Options(
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        ),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        if (data['status'] == 'success') {
          print('Image uploaded successfully: ${data['image_url']}');
        } else {
          print('Error uploading image');
        }
      }
    } on DioException catch (e) {
      print('Error: ${e.message}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Image'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image == null
                ? Text('No image selected.')
                : Image.file(_image!, height: 200, width: 200),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickImage,
              child: Text('Pick Image'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _uploadImage,
              child: Text('Upload Image'),
            ),
          ],
        ),
      ),
    );
  }
}
