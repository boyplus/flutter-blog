import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_existing/models/blog.dart';
import 'package:test_existing/screens/blog.dart';
import 'package:test_existing/utils/text_style.dart';

class BlogWidget extends StatelessWidget {
  final Blog blog;
  const BlogWidget({required this.blog, Key? key}) : super(key: key);

  String getContentText(String content) {
    return content.length > 40 ? content.substring(0, 40) + '...' : content;
  }

  @override
  Widget build(BuildContext context) {
    // final arg = ModalRoute.of(context)!.settings.arguments as Map;
    // final String id = arg['id'];

    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.pushNamed(
            context,
            BlogScreen.routeName,
            arguments: {'id': blog.id},
          );
        },
        child: SizedBox(
          width: 100,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(blog.title, style: headerTextStyle),
                Text(getContentText(blog.content))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
