import 'package:flutter/material.dart';

abstract class TextBase extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final int flex;
  final TextAlign? textAlign;
  final TextStyle? style;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final double? prefixIconSize;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final MainAxisAlignment mainAxisAlignment;

  const TextBase({
    Key? key,
    this.color,
    this.size,
    this.style,
    this.prefixIcon,
    this.suffixIcon,
    this.flex = 0,
    required this.text,
    this.prefixIconSize,
    this.prefixIconColor,
    this.suffixIconColor,
    this.textAlign = TextAlign.center,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);
}
