import 'package:flutter/material.dart';
import 'package:tv_shows/data/category_data.dart';
import 'package:tv_shows/widgets/category_grid_item.dart';


class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: const Text("Choose a Category",),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: GridView(
        padding:const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          ),
          children:[
            //availableCategories.map((everyCategory)=> CategoryGridItem(category:everyCategory)).toList()
            for (final everyCategory in availableCategories)
                CategoryGridItem(category:everyCategory)
          ], ),
    );
  }
}