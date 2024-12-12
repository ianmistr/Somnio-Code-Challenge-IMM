import 'package:flutter/material.dart';

import '../../theme/color_palette.dart';
import '../../theme/text_styles.dart';
import '../../utils/strings.dart';
import '../../utils/strings_format.dart';

class PostBadgeWidget extends StatelessWidget {
  const PostBadgeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
        backgroundColor: ColorPalette.primary,
        label: Text(StringsFormat.initWithUppercase(Strings.community),
            style: TextStyles.postBadge),
        labelPadding: const EdgeInsets.symmetric(horizontal: 6.0),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0))));
  }
}
