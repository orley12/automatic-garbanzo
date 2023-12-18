import 'package:flutter/material.dart';

import '../../resources/dimens.dart';
import '../text/title_view.dart';

class TextButtonView extends StatelessWidget {
  final Size? size;
  final String text;
  final Color? color;
  final Color? backgroundColor;
  final void Function()? onPressed;

  const TextButtonView({
    Key? key,
    this.size,
    this.color,
    required this.text,
    this.backgroundColor,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size?>(
          size ?? Size.zero,
        ),
        backgroundColor: MaterialStateProperty.all<Color?>(backgroundColor),
      ),
      child: TitleView(
        text: text,
        size: Dimens.k18,
        style: Theme.of(context).textTheme.titleMedium,
        color: color ?? Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
