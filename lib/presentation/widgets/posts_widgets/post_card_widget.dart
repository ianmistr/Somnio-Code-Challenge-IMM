import 'package:flutter/material.dart';
import 'package:somnio_code_challenge/presentation/widgets/widgets.dart';

import '../../../domain/entities/entities.dart';

class PostCardWidget extends StatelessWidget {
  const PostCardWidget({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const PostOutlinedContainerWidget(),
        PostContainerWidget(post: post),
      ],
    );
  }
}
