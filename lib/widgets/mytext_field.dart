// ignore_for_file: prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class InputFormWidget extends StatefulWidget {
  @override
  _InputFormWidgetState createState() => _InputFormWidgetState();
}

class _InputFormWidgetState extends State<InputFormWidget> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController ratingController = TextEditingController();
  final TextEditingController imagePathController = TextEditingController();

  void addMovie() {
    final String title = titleController.text;
    final double? rating = double.tryParse(ratingController.text);
    final String imagePath = imagePathController.text;

    if (title.isNotEmpty && rating != null && imagePath.isNotEmpty) {
      print('Judul: $title');
      print('Rating: $rating');
      print('Image Path: $imagePath');
    } else {
      print('Mohon lengkapi semua field.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Film'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Judul Film',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),
            TextField(
              controller: titleController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(),
                hintText: 'Masukkan judul film',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Rating Film',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),
            TextField(
              controller: ratingController,
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(),
                hintText: 'Masukkan rating film (contoh: 8.5)',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Image Path',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),
            TextField(
              controller: imagePathController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(),
                hintText: 'Masukkan path gambar (contoh: assets/film.jpg)',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: addMovie,
                child: Text('Tambahkan Film'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
