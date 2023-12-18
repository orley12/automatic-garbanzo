import 'package:flutter/material.dart';

import '../../../../common/card_view.dart';
import '../../../../common/text/subtitle_view.dart';
import '../../../../common/text/title_view.dart';
import '../../../../resources/dimens.dart';
import '../../../../resources/images.dart';

class VehicleView extends StatelessWidget {
  final double size;
  final String title;
  final String image;
  final String subtitle;
  final double position;
  final AnimationController controller;

  const VehicleView({
    Key? key,
    required this.size,
    required this.title,
    required this.image,
    required this.position,
    required this.subtitle,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimens.k168,
      child: Align(
        alignment: Alignment.centerRight,
        child: CardView(
          width: size,
          padding: const EdgeInsets.only(
            top: Dimens.k16,
            left: Dimens.k16,
            bottom: Dimens.k16,
          ),
          duration: const Duration(milliseconds: 700),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleView(
                    size: Dimens.k18,
                    text: title,
                    style: Theme.of(context).textTheme.titleMedium,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  SubtitleView(
                    text: subtitle,
                    size: Dimens.k14,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ],
              ),
              AnimatedPositioned(
                bottom: image == Images.airplane ? Dimens.k2 : -5,
                right: position,
                duration: const Duration(milliseconds: 1000),
                child: Image.asset(
                  Images.get(image),
                  width: image == Images.airplane ? Dimens.k130 : Dimens.k150,
                  height: image == Images.airplane ? Dimens.k130 : Dimens.k150,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
