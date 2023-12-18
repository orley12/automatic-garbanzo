import 'package:flutter/material.dart';

import '../../resources/dimens.dart';
import '../circular_image.dart';
import 'subtitle_title.dart';

class ListTileSubtitleTitle extends StatelessWidget {
  final String title;
  final String leading;
  final String subTitle;

  const ListTileSubtitleTitle({
    super.key,
    required this.title,
    required this.leading,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircularImage(
          radius: Dimens.k24,
          image: leading,
          backgroundColor: Colors.transparent,
        ),
        const SizedBox(
          width: Dimens.k8,
        ),
        SubtitleTitle(
          title: title,
          subtitle: subTitle,
          spaceBetween: Dimens.k2,
          titleFontSize: Dimens.k16,
          subtitleFontSize: Dimens.k14,
          titleStyle: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
