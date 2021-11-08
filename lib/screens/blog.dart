import 'package:flutter/material.dart';
import 'package:test_existing/widgets/my_app_bar.dart';

class BlogScreen extends StatelessWidget {
  static const routeName = '/blog-detail';
  const BlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    final int id = arg['id'];

    return Scaffold(
      appBar: const MyAppBar(title: 'Blog detail', subtitle: ''),
      body: Container(
        child: Text(id.toString()),
      ),
    );
  }
}
