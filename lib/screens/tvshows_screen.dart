import 'package:flutter/material.dart';
import 'package:tv_shows/models/tv_show_model.dart';

class TVShowsScreen extends StatelessWidget {
  const TVShowsScreen({super.key, required this.title, required this.tvshows});

  final String title;
  final List<TvShow> tvshows;

  @override
  Widget build(context) {
    Widget content = ListView.builder(
      itemCount: tvshows.length,
      itemBuilder: (context, index) => Text(tvshows[index].title),
    );

    if (tvshows.isEmpty) {
      content = const Center(
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("No TV Shows... Sorry"),
          ],
        ),
      );
    }

  return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
