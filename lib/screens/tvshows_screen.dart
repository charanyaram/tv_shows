import 'package:flutter/material.dart';
import 'package:tv_shows/models/tv_show_model.dart';
import 'package:tv_shows/screens/tvshow_details_screen.dart';
import 'package:tv_shows/widgets/tv_show_item.dart';

class TVShowsScreen extends StatelessWidget {
  const TVShowsScreen({super.key, this.title, required this.tvshows, required this.onToggleFavourite});

  final String? title;
  final List<TvShow> tvshows;
  final void Function(TvShow tvshow) onToggleFavourite;
 
  void onSelectShow(BuildContext context, TvShow tvShow){
    Navigator.of(context).push(MaterialPageRoute(builder: (tvshowcontext)=> TVShowDetailsScreen(onToggleFavourite: onToggleFavourite,tvShow: tvShow)));
  }

  @override
  Widget build(context) {
    Widget content = ListView.builder(
      itemCount: tvshows.length,
      itemBuilder: (context, index) => TVShowItem(tvShow: tvshows[index],onTVShowTap: (tvShow){onSelectShow(context, tvShow);}),
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
  if (title == null){
    return content;
  }

  return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
