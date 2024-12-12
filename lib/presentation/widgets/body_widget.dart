import 'package:flutter/material.dart';
import 'package:somnio_code_challenge/presentation/widgets/widgets.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
        children: [PostSectionWidget(), Newsectionwidget()]);
  }
}
