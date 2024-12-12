import 'package:flutter/material.dart';
import '../../theme/text_styles.dart';
import '../../utils/strings_format.dart';

class PostSubtitleWidget extends StatelessWidget {
  const PostSubtitleWidget({super.key, required this.subtitle});

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      StringsFormat.initWithUppercase(subtitle),
      style: TextStyles.postContent,
      maxLines: 4,
      overflow: TextOverflow.fade,
    );
  }
}
