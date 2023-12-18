import 'package:flutter/material.dart';

import '../resources/dimens.dart';

class ChipView extends StatelessWidget {
  final Color? color;
  final Widget child;

  const ChipView({
    super.key,
    this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.k12,
        vertical: Dimens.k1,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.k15),
        color: color ?? Theme.of(context).colorScheme.inversePrimary,
      ),
      child: child,
    );
  }
}
