// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating; 
  const StarRating({
    Key? key,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int fullStars = rating ~/ 2; 
    int halfStars = (rating % 2 >= 1) ? 1 : 0; 
    int emptyStars = 5 - fullStars - halfStars; 

    return Row(
      children: [
        ...List.generate(fullStars, (index) => Icon(Icons.star, color: Colors.amber)),
        ...List.generate(halfStars, (index) => Icon(Icons.star_half, color: Colors.amber)),
        ...List.generate(emptyStars, (index) => Icon(Icons.star_border, color: Colors.amber)),
      ],
    );
  }
}
