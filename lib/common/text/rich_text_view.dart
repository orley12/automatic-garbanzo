import 'package:flutter/material.dart';

class RichTextView extends StatelessWidget {
  final TextAlign textAlign;
  final List<TextSpan> spans;

  const RichTextView({
    Key? key,
    required this.spans,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        children: spans,
      ),
    );
  }
}
