import 'package:flutter/material.dart';

import '../resources/dimens.dart';

class InputField extends StatelessWidget {
  final double radius;
  final String hintText;
  final Color? fillColor;
  final double? fontSize;
  final bool showDivider;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final void Function()? onTap;

  const InputField({
    Key? key,
    this.fontSize,
    this.fillColor,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    required this.hintText,
    this.showDivider = true,
    this.radius = Dimens.k15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        hintText: hintText,
        fillColor: fillColor ?? Theme.of(context).colorScheme.surface,
        hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: fontSize,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (prefixIcon != null) prefixIcon!,
            if (showDivider == true) ...[
              SizedBox(
                height: Dimens.k30,
                child: VerticalDivider(
                  width: Dimens.k10,
                  thickness: Dimens.k0_5,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(
                width: Dimens.k2,
              )
            ],
          ],
        ),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      onTap: onTap,
      keyboardType: TextInputType.text,
    );
  }
}
