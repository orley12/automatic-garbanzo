import 'package:flutter/material.dart';

import '../../resources/dimens.dart';
import '../text/title_view.dart';

class OutlinedButtonView extends StatelessWidget {
  final String text;

  const OutlinedButtonView({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.k8,
          horizontal: Dimens.k14,
        ),
        side: BorderSide(
            width: Dimens.k1_5,
            color: Theme.of(context).colorScheme.onSurfaceVariant),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.k8),
        ),
      ),
      child: TitleView(
        color: Theme.of(context).colorScheme.onSurface,
        text: text,
      ),
    );
  }
}
