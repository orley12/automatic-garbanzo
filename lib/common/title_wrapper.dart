import 'package:flutter/material.dart';

import '../resources/dimens.dart';
import 'text/title_view.dart';

class TitleWrapper extends StatelessWidget {
  final String title;
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const TitleWrapper({
    super.key,
    this.padding,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: padding ?? EdgeInsets.zero,
          child: TitleView(
            text: " $title",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const SizedBox(
          height: Dimens.k24,
        ),
        child
      ],
    );
  }
}
