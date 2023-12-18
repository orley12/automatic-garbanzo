import 'package:flutter/material.dart';

import '../../resources/dimens.dart';
import 'text_base.dart';

class SubtitleView extends TextBase {
  const SubtitleView({
    super.key,
    super.size,
    super.flex,
    super.style,
    super.color,
    super.textAlign,
    super.prefixIcon,
    required super.text,
    super.prefixIconSize,
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
            color: prefixIconColor ??
                Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        Expanded(
          flex: flex,
          child: Text(
            text,
            maxLines: 4,
            textAlign: textAlign,
            style: Theme.of(context).textTheme.bodySmall?.merge(style).copyWith(
                  fontSize: size,
                  color:
                      color ?? Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
        ),
      ],
    );
  }
}
