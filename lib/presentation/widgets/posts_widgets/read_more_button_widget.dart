import 'package:flutter/material.dart';

import '../../theme/color_palette.dart';
import '../../theme/text_styles.dart';
import '../../utils/strings.dart';
import '../../utils/strings_format.dart';

class ReadMoreButtonWidget extends StatelessWidget {
  const ReadMoreButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Text(
            StringsFormat.initWithUppercase(Strings.readMore),
            style: TextStyles.readMoreText,
          ),
          const SizedBox(width: 12),
          Icon(
            Icons.east,
            color: ColorPalette.secondary,
            size: 18,
          )
        ],
      ),
    );
  }
}
