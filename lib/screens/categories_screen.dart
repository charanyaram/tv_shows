import 'package:flutter/material.dart';
import 'package:tv_shows/data/category_data.dart';
import 'package:tv_shows/data/tv_show_data.dart';
import 'package:tv_shows/models/category_model.dart';
import 'package:tv_shows/models/tv_show_model.dart';
import 'package:tv_shows/screens/tvshows_screen.dart';
import 'package:tv_shows/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.onToggleFavourite});

  final void Function(TvShow tvshow) onToggleFavourite;

  void _selectCategory(BuildContext context, Category category) {
    final filteredTvShowList = availableTvShows
        .where((tvshow) => tvshow.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(MaterialPageRoute(
        builder: (tvshowcontext) =>
            TVShowsScreen(onToggleFavourite: onToggleFavourite,title: category.title, tvshows: filteredTvShowList)));
    //Navigator.push(context, route);
  }

  @override
  Widget build(context) {
    return GridView(
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        //availableCategories.map((everyCategory)=> CategoryGridItem(category:everyCategory)).toList()
        for (final everyCategory in availableCategories)
          CategoryGridItem(
            category: everyCategory,
            selectCategory: () {
              _selectCategory(context, everyCategory);
            },
          )
      ],
    );
  }
}
