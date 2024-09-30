// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'star_rating.dart';

class MovieItem extends StatelessWidget {
  final String title;
  final double rating;
  final String imagePath;

  const MovieItem({Key? key, required this.title, required this.rating, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[850],
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              StarRating(rating: rating),
            ],
          ),
        ],
      ),
    );
  }
}
