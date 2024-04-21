import 'package:flutter/material.dart';
import 'package:tv_shows/data/tv_show_data.dart';
import 'package:tv_shows/screens/categories_screen.dart';
import 'package:tv_shows/screens/tvshows_screen.dart';

final theme = ThemeData(
  //fontFamily: "CupertinoSystemText",
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor:const Color.fromARGB(255, 133, 69, 23),
  ),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const TVShowsScreen(title: "Testing",tvshows: availableTvShows,),
    );
  }
}