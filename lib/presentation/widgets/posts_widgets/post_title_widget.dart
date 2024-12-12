import 'package:flutter/material.dart';
import '../../theme/text_styles.dart';
import '../../utils/strings_format.dart';

class PostTitleWidget extends StatelessWidget {
  const PostTitleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      StringsFormat.initWithUppercase(title),
      style: TextStyles.postTitle,
      maxLines: 3,
      overflow: TextOverflow.fade,
    );
  }
}
