import 'package:flutter/material.dart';

import '../common/button/text_button_view.dart';
import '../common/text/rich_text_view.dart';
import '../common/text/subtitle_view.dart';
import '../common/text/title_view.dart';
import '../resources/dimens.dart';
import '../resources/images.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.k16),
        children: [
          const SizedBox(
            height: Dimens.k152,
          ),
          Image.asset(
            Images.get(Images.logo),
            width: Dimens.k191,
            height: Dimens.k23,
          ),
          const SizedBox(
            height: Dimens.k72,
          ),
          Image.asset(
            Images.get(Images.box),
            width: Dimens.k196,
            height: Dimens.k196,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.k22),
            child: Column(
              children: [
                const TitleView(
                  size: Dimens.k28,
                  text: "Total Estimated Amount",
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: Dimens.k4,
                ),
                RichTextView(
                  textAlign: TextAlign.center,
                  spans: [
                    TextSpan(
                      text: "\$1460 ",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontSize: Dimens.k28,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                    ),
                    TextSpan(
                      text: "USD",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontSize: Dimens.k20,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: Dimens.k4,
                ),
                const SubtitleView(
                  flex: 1,
                  size: Dimens.k18,
                  mainAxisAlignment: MainAxisAlignment.center,
                  text:
                      "This amount is estimated this will vary if you change your location or weight",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: Dimens.k40,
          ),
          TextButtonView(
            text: "Back to home",
            size: const Size(double.infinity, Dimens.k56),
            color: Theme.of(context).colorScheme.onSecondary,
            backgroundColor: Theme.of(context).colorScheme.secondary,
          ),
        ],
      ),
    );
  }
}
