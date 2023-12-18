import 'package:flutter/material.dart';

class MoveMateListView extends StatelessWidget {
  final int initialItemCount;
  final Axis scrollDirection;
  final EdgeInsetsGeometry? padding;
  final Widget Function(BuildContext, int) itemBuilder;

  const MoveMateListView({
    Key? key,
    this.padding,
    required this.itemBuilder,
    required this.initialItemCount,
    this.scrollDirection = Axis.horizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: itemBuilder,
      itemCount: initialItemCount,
      scrollDirection: scrollDirection,
      padding: padding ?? EdgeInsets.zero,
    );
  }
}
