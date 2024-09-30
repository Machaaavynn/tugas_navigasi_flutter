// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'movie_item.dart';

class MovieList extends StatelessWidget {
  final List<Map<String, dynamic>> movies;

  const MovieList({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return MovieItem(
            title: movie['title'],
            rating: movie['rating'],
            imagePath: movie['imagePath'],
          );
        },
      ),
    );
  }
}
