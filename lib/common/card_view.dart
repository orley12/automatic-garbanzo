import 'package:flutter/material.dart';

import '../resources/dimens.dart';

class CardView extends StatelessWidget {
  final Widget child;
  final double? width;
  final Duration? duration;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const CardView({
    super.key,
    this.width,
    this.margin,
    this.padding,
    this.duration,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.fastOutSlowIn, // Use a smooth curve for the animation
      width: width ?? double.infinity,
      padding: padding ?? const EdgeInsets.all(Dimens.k16),
      margin: margin ?? const EdgeInsets.symmetric(horizontal: Dimens.k8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.k16),
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300.withOpacity(Dimens.k0_1),
            spreadRadius: Dimens.k0_5,
            blurRadius: Dimens.k10,
            offset: const Offset(Dimens.k0, Dimens.k1),
          ),
        ],
      ),
      duration: duration ?? const Duration(),
      child: child,
    );
  }
}
