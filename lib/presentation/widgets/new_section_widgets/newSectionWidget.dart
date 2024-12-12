import 'package:flutter/material.dart';

import '../../theme/responsive.dart';
import '../../theme/text_styles.dart';
import '../../utils/strings.dart';
import '../../utils/strings_format.dart';

class Newsectionwidget extends StatelessWidget {
  const Newsectionwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 8,
          ),
          Text(
            StringsFormat.initWithUppercase(Strings.newSection),
            style: TextStyles.postTitle,
          ),
          Text(
            StringsFormat.initWithUppercase(Strings.blogSubtitle),
            style: TextStyles.postContent,
          ),
          Container(
            padding: EdgeInsets.only(
                top: Responsive.responsiveHeight(
                    MediaQuery.of(context).size.height, 0.3)),
            alignment: Alignment.center,
            child: Text(
              StringsFormat.initWithUppercase(Strings.comingSoon),
              style: TextStyles.comingSoon,
            ),
          ),
        ]));
  }
}
