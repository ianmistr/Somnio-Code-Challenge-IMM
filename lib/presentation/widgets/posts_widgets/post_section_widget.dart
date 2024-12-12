import 'package:flutter/material.dart';
import 'package:somnio_code_challenge/presentation/widgets/posts_widgets/posts_list_widget.dart';
import '../../theme/text_styles.dart';
import '../../utils/strings.dart';
import '../../utils/strings_format.dart';

class PostSectionWidget extends StatelessWidget {
  const PostSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          Text(
            StringsFormat.initWithUppercase(Strings.blog),
            style: TextStyles.postTitle,
          ),
          Text(
            StringsFormat.initWithUppercase(Strings.blogSubtitle),
            style: TextStyles.postContent,
          ),
          const SizedBox(
            height: 16,
          ),
          const PostsListWidget()
        ],
      ),
    );
  }
}
