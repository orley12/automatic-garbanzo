import 'package:flutter/material.dart';

import '../../common/text/rich_text_view.dart';
import '../../resources/dimens.dart';

class AmountDate extends StatelessWidget {
  final String date;
  final String amount;

  const AmountDate({
    super.key,
    required this.date,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return RichTextView(
      spans: [
        TextSpan(
          text: amount,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: Dimens.k16,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
        TextSpan(
          text: " • ",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.onInverseSurface,
              ),
        ),
        TextSpan(
          text: date,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
