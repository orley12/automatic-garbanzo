import 'package:flutter/material.dart';

import '../../resources/dimens.dart';
import '../../resources/images.dart';
import '../circular_image.dart';
import 'title_subtitle.dart';

class ListTileTitleSubtitle extends StatelessWidget {
  final int index;

  const ListTileTitleSubtitle({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircularImage(
              radius: Dimens.k24,
              image: Images.get(Images.box_2),
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(
              width: Dimens.k8,
            ),
            TitleSubtitle(
              title: "Macbook pro M2",
              subtitle: "#NE43857340857904 • Paris > Morocco",
              spaceBetween: Dimens.k2,
              titleFontSize: Dimens.k16,
              subtitleFontSize: Dimens.k14,
              titleStyle: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        if (index < 3)
          Divider(
            thickness: Dimens.k0_1,
            height: Dimens.k24,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
      ],
    );
  }
}
