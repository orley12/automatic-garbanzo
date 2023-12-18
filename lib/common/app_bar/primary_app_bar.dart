import 'package:flutter/material.dart';

import '../../resources/dimens.dart';
import '../text/title_view.dart';

class PrimaryAppBar extends PreferredSize {
  final String title;
  final TextStyle? style;
  final PreferredSizeWidget? bottom;
  final void Function()? onBackPressed;

  const PrimaryAppBar({
    super.key,
    this.style,
    this.bottom,
    this.onBackPressed,
    required this.title,
    super.child = const SizedBox(),
    super.preferredSize = const Size(double.infinity, Dimens.k56),
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: bottom,
      leading: IconButton(
        onPressed: onBackPressed,
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      title: TitleView(
        text: title,
        mainAxisAlignment: MainAxisAlignment.center,
        style: Theme.of(context).textTheme.titleLarge?.merge(style),
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }
}
