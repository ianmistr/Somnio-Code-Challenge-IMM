import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/color_palette.dart';
import '../../theme/responsive.dart';

class PostImageWidget extends StatelessWidget {
  const PostImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/somnio_logo.svg';

    return Container(
      width: 400.0,
      height: Responsive.isSmartphone(MediaQuery.of(context).size.shortestSide)
          ? 150.0
          : Responsive.responsiveHeight(
              MediaQuery.of(context).size.height, 0.07),
      padding: const EdgeInsets.all(28.0),
      decoration: BoxDecoration(
          border: Border.all(
            color: ColorPalette.border,
          ),
          borderRadius: BorderRadius.circular(16),
          color: ColorPalette.border),
      child: SvgPicture.asset(
        assetName,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
