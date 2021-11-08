import 'package:flutter/material.dart';
import 'package:test_existing/widgets/blogs_widget.dart';
import 'package:test_existing/widgets/my_app_bar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  const HomeScreen({Key? key}) : super(key: key);

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
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: 'title',
                    ),
                    onSaved: (String? value) {},
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
                  onPressed: () {},
                  color: Colors.blue,
                  child: const Text(
                    'Search',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Blogs()
          ],
        ),
      ),
    );
  }
}
