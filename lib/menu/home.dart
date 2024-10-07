// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:navigasi_buttom/widgets/category/custom_app_bar.dart';
import 'package:navigasi_buttom/widgets/home/movie_list.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Trending",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            MovieList(movies: _getMovies()),
          ],
        ),
      ),
    );
  }

  List<Map<String, dynamic>> _getMovies() {
    return [
      {
        'title': 'THE GODFATHER (1970)',
        'rating': 9.2,
        'imagePath': 'assets/thegodfather.jpg',
      },
      {
        'title': 'THE SHAWSHANK (1994)',
        'rating': 9.3,
        'imagePath': 'assets/theshawshnk.jpg',
      },
      {
        'title': 'MEMORIES OF MURDER',
        'rating': 8.1,
        'imagePath': 'assets/memories.jpg',
      },
      {
        'title': 'THE DAVINCI CODE (2006)',
        'rating': 6.6,
        'imagePath': 'assets/thedavinci.jpg',
      },
      {
        'title': 'SPIDERMAN (2021)',
        'rating': 8.2,
        'imagePath': 'assets/spiderman.jpg',
      },
      {
        'title': 'AVENGERS: ENDGAME (2019)',
        'rating': 8.4,
        'imagePath': 'assets/avengers.jpg',
      },
      {
        'title': 'SEARCHING (2018)',
        'rating': 7.6,
        'imagePath': 'assets/searching.jpg',
      },
      {
        'title': 'GET OUT (2017)',
        'rating': 7.8,
        'imagePath': 'assets/getout.jpg',
      },
      {
        'title': 'US (2019)',
        'rating': 6.8,
        'imagePath': 'assets/us.jpg',
      },
      {
        'title': 'TOY STORY 4 (2019)',
        'rating': 7.7,
        'imagePath': 'assets/toystory.jpg',
      },
    ];
  }
}
