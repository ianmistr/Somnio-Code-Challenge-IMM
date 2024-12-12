import 'package:flutter/material.dart';
import 'package:somnio_code_challenge/presentation/widgets/widgets.dart';

import '../../../domain/entities/entities.dart';
import '../../theme/responsive.dart';

class PostContainerWidget extends StatelessWidget {
  const PostContainerWidget({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      SizedBox(
        height:
            Responsive.isSmartphone(MediaQuery.of(context).size.shortestSide)
                ? 510
                : 700,
        width: 400,
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PostBadgeWidget(),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 200.0,
                    constraints: const BoxConstraints(minHeight: 140.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PostTitleWidget(
                          title: post.title,
                        ),
                        PostSubtitleWidget(subtitle: post.body),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const ReadMoreButtonWidget(),
                  SizedBox(
                    height: Responsive.isSmartphone(
                            MediaQuery.of(context).size.shortestSide)
                        ? 12
                        : 4,
                  )
                ],
              ),
            ),
            const PostImageWidget()
          ],
        ),
      ),
    ]);
  }
}
