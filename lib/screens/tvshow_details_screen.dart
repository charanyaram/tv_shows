import 'package:flutter/material.dart';
import 'package:tv_shows/models/tv_show_model.dart';

class TVShowDetailsScreen extends StatelessWidget {
  const TVShowDetailsScreen({super.key, required this.tvShow});
  final TvShow tvShow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(tvShow.title),
        ),
        body: Column(children: [
          Image.network(tvShow.imageUrl,
              width: double.infinity, height: 400, fit: BoxFit.cover),
          const SizedBox(height: 20,),
          for(final info in tvShow.information)
            Text('$info \n', style: const TextStyle(fontStyle: FontStyle.italic),)
        ]));
  }
}
