import 'package:flutter/material.dart';
import 'package:tv_shows/screens/categories_screen.dart';
import 'package:tv_shows/screens/tvshows_screen.dart';

class BottomTabScreen extends StatefulWidget {
  const BottomTabScreen({super.key});

  @override
  State<BottomTabScreen> createState() {
    return _BottomTabScreenState();
  }
}

class _BottomTabScreenState extends State<BottomTabScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    Widget activePage = const CategoriesScreen();
    var activePageTitle = 'Categories';

    if(_selectedPageIndex == 1){
      activePage = const TVShowsScreen(tvshows: []);
      activePageTitle = 'Your Favourites';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star) , label:'Favourites' ),
        ]
      ),
    );
  }
}