import 'package:flutter/cupertino.dart';
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
        actions: [
          Icon(
            CupertinoIcons.search, // 쿠퍼티노 아이콘 사용
            color: Colors.black,
          ),
          SizedBox(width: 15),
          Icon(CupertinoIcons.heart, color: Colors.redAccent),
          SizedBox(width: 15),
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
