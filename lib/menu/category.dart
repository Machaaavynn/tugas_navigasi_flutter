// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:navigasi_buttom/model/model.dart';
import 'package:navigasi_buttom/widgets/category/genre_tile.dart';
import 'package:navigasi_buttom/widgets/category/Search.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Genre> genres = [
      Genre(
        name: 'Film Animation',
        films: [
          Film(title: 'Masha and the Bear', imagePath: 'assets/mashabear.jpg'),
          Film(title: 'SpongeBob', imagePath: 'assets/spongbob.jpg'),
          Film(title: 'Minions', imagePath: 'assets/minions.jpg'),
          Film(
              title: 'Grizzy and the Lemmings', imagePath: 'assets/grizzy.jpg'),
          Film(title: 'Cocomelon', imagePath: 'assets/cocomelon.jpg'),
        ],
      ),
      Genre(
        name: 'Film Horor',
        films: [
          Film(title: 'Agak Laen', imagePath: 'assets/agaklaen.jpg'),
          Film(
              title: 'Death Whisperer', imagePath: 'assets/deathwhisperer.jpg'),
          Film(title: 'Siksa Kubur', imagePath: 'assets/siksakubur.jpg'),
          Film(title: 'Menjelang Ajal', imagePath: 'assets/menjelangajal.jpg'),
          Film(
              title: 'Badarahuwi Di desa Penari',
              imagePath: 'assets/desapenari.jpg'),
          Film(title: 'Shaitaan', imagePath: 'assets/shaitaan.jpg'),
        ],
      ),
      Genre(
        name: 'Film War',
        films: [
          Film(title: 'Fighter', imagePath: 'assets/figher.jpg'),
          Film(title: 'Outlaw King', imagePath: 'assets/outlawking.jpg'),
          Film(title: 'Sisu', imagePath: 'assets/sisu.jpg'),
          Film(title: 'The Eagle', imagePath: 'assets/theeangle.jpg'),
          Film(title: 'The Gun', imagePath: 'assets/thegun.jpg'),
          Film(title: 'The King', imagePath: 'assets/theking.jpg'),
        ],
      ),
      Genre(
        name: 'Film Dramatis',
        films: [
          Film(title: 'Gitfet', imagePath: 'assets/gitfed.jpg'),
          Film(title: 'Dua Hati Biru', imagePath: 'assets/duahati.jpg'),
          Film(title: 'Leave the World Behind', imagePath: 'assets/leave.jpg'),
          Film(title: 'Now Here', imagePath: 'assets/nowhere.jpg'),
          Film(title: 'Pulang', imagePath: 'assets/pulang.jpg'),
          Film(title: 'Anchika 1995', imagePath: 'assets/ancika.jpg'),
        ],
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: genres
                .map((genre) => _buildGenreSection(genre.name, genre.films))
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildGenreSection(String title, List<Film> films) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 150,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: films.map((film) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child:
                      GenreTile(title: film.title, imagePath: film.imagePath),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
