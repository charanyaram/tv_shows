

import 'package:flutter/material.dart';
import 'package:tv_shows/models/category_model.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({super.key, required this.category});

  final Category category;

  @override
  Widget build(context) {
    return InkWell(
      onTap: (){},
      splashColor: Theme.of(context).primaryColorLight,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(10), //added this to add some padding within the container
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            category.color.withOpacity(0.7),
            category.color.withOpacity(0.9),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter)
        ),
        child: Text(
          category.title
        ),
      ),
    );
  }
}