import 'package:flutter/material.dart';
import 'package:somnio_code_challenge/presentation/theme/color_palette.dart';

import '../../theme/responsive.dart';

class PostOutlinedContainerWidget extends StatelessWidget {
  const PostOutlinedContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: Responsive.isSmartphone(
                    MediaQuery.of(context).size.shortestSide)
                ? 500
                : 700,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorPalette.border,
              ),
              borderRadius: BorderRadius.circular(16),
            ))
      ],
    );
  }
}
