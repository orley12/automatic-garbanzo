import 'package:flutter/material.dart';

abstract class TileBase extends StatelessWidget {
  final String title;
  final String subtitle;
  final int subTileFlex;
  final Color? titleColor;
  final Color? subtitleColor;
  final double? spaceBetween;
  final double? titleFontSize;
  final TextStyle? titleStyle;
  final double? subtitleFontSize;
  final TextStyle? subtitleStyle;
  final Color? subtitleIconColor;
  final IconData? titleSuffixIcon;
  final IconData? titlePrefixIcon;
  final Color? titleSuffixIconColor;
  final Color? titlePrefixIconColor;
  final IconData? subtitlePrefixIcon;
  final CrossAxisAlignment crossAxisAlignment;

  const TileBase({
    super.key,
    this.titleColor,
    this.titleStyle,
    this.spaceBetween,
    this.titleFontSize,
    this.subtitleColor,
    this.subtitleStyle,
    required this.title,
    this.subTileFlex = 0,
    this.titlePrefixIcon,
    this.titleSuffixIcon,
    this.subtitleFontSize,
    required this.subtitle,
    this.subtitleIconColor,
    this.subtitlePrefixIcon,
    this.titlePrefixIconColor,
    this.titleSuffixIconColor,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });
}
