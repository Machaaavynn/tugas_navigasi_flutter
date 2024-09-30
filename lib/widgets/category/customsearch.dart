import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  final List<String> filmList = [
    'Masha and the Bear',
    'SpongeBob',
    'Minions',
    'Grizzy and the Lemmings',
    'Cocomelon',
    'Agak Laen',
    'Death Whisperer',
    'Siksa Kubur',
    'Menjelang Ajal',
    'Badarahuwi Di desa Penari',
    'Shaitaan',
    'The Doble',
    'Who Rules the World',
    'The Princess Royal',
    'Lost You Forever',
    'Victoria & Abdul',
    'Empress Ki',
    'Fighter',
    'Outlaw King',
    'Sisu',
    'The Eagle',
    'The Gun',
    'The King',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<String> results = filmList
        .where((film) => film.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(results[index]),
          onTap: () {
            close(context, results[index]);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> suggestions = filmList
        .where((film) => film.toLowerCase().startsWith(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index]),
          onTap: () {
            query = suggestions[index];
            showResults(context);
          },
        );
      },
    );
  }
}
