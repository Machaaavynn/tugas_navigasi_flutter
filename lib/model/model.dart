class Genre {
  final String name;
  final List<Film> films;

  Genre({required this.name, required this.films});
}

class Film {
  final String title;
  final String imagePath;

  Film({required this.title, required this.imagePath});
}
