// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:navigasi_buttom/widgets/category/genre_tile.dart';
import 'package:navigasi_buttom/widgets/category/custom_app_bar.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildGenreSection('Film Animation', [
                GenreTile(
                    title: 'Masha and the Bear',
                    imagePath: 'assets/mashabear.jpg'),
                GenreTile(title: 'SpongeBob', imagePath: 'assets/spongbob.jpg'),
                GenreTile(title: 'Minions', imagePath: 'assets/minions.jpg'),
                GenreTile(
                    title: 'Grizzy and the Lemmings',
                    imagePath: 'assets/grizzy.jpg'),
                GenreTile(
                    title: 'Cocomelon', imagePath: 'assets/cocomelon.jpg'),
              ]),
              SizedBox(height: 16),
              _buildGenreSection('Film Horor', [
                GenreTile(title: 'Agak Laen', imagePath: 'assets/agaklaen.jpg'),
                GenreTile(
                    title: 'Death Whisperer',
                    imagePath: 'assets/deathwhisperer.jpg'),
                GenreTile(
                    title: 'Siksa Kubur', imagePath: 'assets/siksakubur.jpg'),
                GenreTile(
                    title: 'Menjelang Ajal',
                    imagePath: 'assets/menjelangajal.jpg'),
                GenreTile(
                    title: 'Badarahuwi Di desa Penari',
                    imagePath: 'assets/desapenari.jpg'),
                GenreTile(title: 'Shaitaan', imagePath: 'assets/shaitaan.jpg'),
              ]),
              SizedBox(height: 16),
              _buildGenreSection('Film Royal', [
                GenreTile(title: 'The Doble', imagePath: 'assets/thedoble.jpg'),
                GenreTile(
                    title: 'Who Rules the World',
                    imagePath: 'assets/whorules.jpg'),
                GenreTile(
                    title: 'The Princess Royal',
                    imagePath: 'assets/theroyal.jpg'),
                GenreTile(
                    title: 'Lost You Forever',
                    imagePath: 'assets/lostyouforever.jpg'),
                GenreTile(
                    title: 'Victoria & Abdul',
                    imagePath: 'assets/victoria.jpg'),
                GenreTile(
                    title: 'Empress Ki', imagePath: 'assets/empresski.jpg'),
              ]),
              SizedBox(height: 16),
              _buildGenreSection('Film War', [
                GenreTile(title: 'Fighter', imagePath: 'assets/figher.jpg'),
                GenreTile(
                    title: 'Outlaw King', imagePath: 'assets/outlawking.jpg'),
                GenreTile(title: 'Sisu', imagePath: 'assets/sisu.jpg'),
                GenreTile(
                    title: 'The Eagle', imagePath: 'assets/theeangle.jpg'),
                GenreTile(title: 'The Gun', imagePath: 'assets/thegun.jpg'),
                GenreTile(title: 'The King', imagePath: 'assets/theking.jpg'),
              ]),
              SizedBox(height: 16),
              _buildGenreSection('Film Drama', [
                GenreTile(title: 'Gitfet', imagePath: 'assets/gitfed.jpg'),
                GenreTile(
                    title: 'Dua Hati Biru', imagePath: 'assets/duahati.jpg'),
                GenreTile(
                    title: 'Leave the World Behind',
                    imagePath: 'assets/leave.jpg'),
                GenreTile(title: 'Now Here', imagePath: 'assets/nowhere.jpg'),
                GenreTile(title: 'Pulang', imagePath: 'assets/pulang.jpg'),
                GenreTile(title: 'Ancika 1995', imagePath: 'assets/ancika.jpg'),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGenreSection(String title, List<Widget> genreTiles) {
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
              children: genreTiles.map((tile) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: tile,
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
