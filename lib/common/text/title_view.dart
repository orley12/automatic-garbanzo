import 'package:flutter/material.dart';

import '../../resources/dimens.dart';
import 'text_base.dart';

class TitleView extends TextBase {
  const TitleView({
    super.key,
    super.color,
    super.size,
    super.style,
    super.prefixIconSize,
    super.prefixIcon,
    super.suffixIcon,
    required super.text,
    super.suffixIconColor,
    super.prefixIconColor,
    super.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: mainAxisAlignment,
      children: [
        if (prefixIcon != null)
          Icon(
            prefixIcon,
            size: prefixIconSize ?? Dimens.k16,
            color: prefixIconColor,
          ),
        Text(
          text,
          maxLines: 4,
          style: Theme.of(context).textTheme.titleSmall?.merge(style).copyWith(
                fontSize: size,
                color: color ?? Theme.of(context).colorScheme.onSurface,
              ),
        ),
        if (suffixIcon != null)
          Icon(
            suffixIcon,
            size: Dimens.k16,
            color: suffixIconColor ?? Theme.of(context).colorScheme.onSurface,
          ),
      ],
    );
  }
}
