import 'package:flutter/material.dart';
import 'package:test_existing/widgets/blogs_widget.dart';
import 'package:test_existing/widgets/my_app_bar.dart';
import 'package:test_existing/models/blog.dart';
import 'package:test_existing/data/blog.dart' as mock_blogs;

class HomeScreen extends StatefulWidget {
  static const routeName = '/';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _keyForm = GlobalKey<FormState>();
  final keyword = TextEditingController();
  List<Blog> blogs = mock_blogs.blogs;

  List<Blog> getRenderedBlogs(String keyword) {
    List<Blog> result =
        blogs.where((blog) => blog.title.contains(keyword)).toList();
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        subtitle: '',
        title: 'Blog App',
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Search the blog",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Form(
              key: _keyForm,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: 'title',
                      ),
                      controller: keyword,
                      validator: (String? value) {
                        return (value != null && value.length >= 5)
                            ? 'Length must less than 5 characters'
                            : null;
                        // return value.length >= 5: 'Length must less than 5 characters':null;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  MaterialButton(
                    onPressed: () {
                      if (_keyForm.currentState!.validate()) {
                        setState(() {});
                      }
                    },
                    color: Colors.blue,
                    child: const Text(
                      'Search',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Blogs(blogs: getRenderedBlogs(keyword.text))
          ],
        ),
      ),
    );
  }
}
