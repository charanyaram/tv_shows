import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
      appBar: AppBar(
        title: const Text("Choose a Category",),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
    );
  }
}