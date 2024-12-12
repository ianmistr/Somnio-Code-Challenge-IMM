import 'package:flutter/material.dart';
import '../widgets.dart';

class PostGridWidget extends StatelessWidget {
  const PostGridWidget({super.key, required this.posts});

  final List posts;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 12.0,
            crossAxisCount:
                (MediaQuery.of(context).orientation == Orientation.portrait)
                    ? 2
                    : 3),
        itemBuilder: (BuildContext context, int index) =>
            PostCardWidget(post: posts[index]),
        itemCount: posts.length);
  }
}
