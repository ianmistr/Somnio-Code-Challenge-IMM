import 'package:flutter/widgets.dart';

import '../../theme/text_styles.dart';
import '../../utils/strings_format.dart';

class PostMessageLabelWidget extends StatelessWidget {
  const PostMessageLabelWidget({super.key, required this.message});

  final String message;
  @override
  Widget build(BuildContext context) {
    return Text(
      StringsFormat.initWithUppercase(message),
      style: TextStyles.messageLabel,
    );
  }
}
