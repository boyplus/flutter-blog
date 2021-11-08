import 'package:flutter/material.dart';
import 'package:test_existing/screens/blog.dart';
import 'package:test_existing/screens/home.dart';
import 'package:test_existing/widgets/my_app_bar.dart';

class SearchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      routes: {
        BlogScreen.routeName: (ctx) => const BlogScreen(),
      },
    );
  }
}

void main() {
  runApp(SearchApp());
}
