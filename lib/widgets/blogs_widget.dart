import 'package:flutter/material.dart';
import 'package:test_existing/models/blog.dart';
import 'package:test_existing/data/blog.dart' as mock_blogs;
import 'package:test_existing/widgets/blog_widget.dart';

class Blogs extends StatelessWidget {
  List<Blog> blogs = mock_blogs.blogs;

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
