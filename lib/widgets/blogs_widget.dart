import 'package:flutter/material.dart';
import 'package:test_existing/models/blog.dart';

import 'package:test_existing/widgets/blog_widget.dart';

class Blogs extends StatelessWidget {
  final List<Blog> blogs;
  const Blogs({required this.blogs, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: blogs.map((Blog data) {
          return BlogWidget(
            blog: data,
          );
        }).toList(),
      ),
    );
  }
}
