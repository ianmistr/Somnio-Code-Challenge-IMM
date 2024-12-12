import 'package:flutter/material.dart';
import 'package:somnio_code_challenge/presentation/theme/color_palette.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: ColorPalette.primary,
        bottom: TabBar(tabs: [
          Tab(
              icon: Icon(
            Icons.text_snippet_rounded,
            color: ColorPalette.lightBackground,
          )),
          Tab(
              icon: Icon(
            Icons.more_horiz_rounded,
            color: ColorPalette.lightBackground,
          )),
        ]));
  }
}
