import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/recipe_list_item.dart';
import 'package:flutter_recipe_app/recipe_menu.dart';
import 'package:flutter_recipe_app/recipe_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: RecipePage());
  }
}

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(icon: const Icon(Icons.navigate_next), tooltip: 'Go to the next page', onPressed: () {}),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RecipeTitle(),
          RecipeMenu(),
          RecipeListItem(), // for coffee
          RecipeListItem(), // for burger
          RecipeListItem(), // for pizza
        ],
      ),
    );
  }
}
