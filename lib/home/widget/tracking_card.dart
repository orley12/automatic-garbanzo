import 'package:flutter/material.dart';
import 'package:flutter_octicons/flutter_octicons.dart';

import '../../common/button/text_button_view.dart';
import '../../common/title_wrapper.dart';
import '../../resources/dimens.dart';
import '../../resources/images.dart';
import '../../common/tile/list_tile_subtitle_title.dart';
import '../../common/card_view.dart';
import '../../common/tile/subtitle_title.dart';

class TrackingCard extends StatelessWidget {
  final AnimationController controller;

  const TrackingCard({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero)
          .animate(
              CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn)),
      child: FadeTransition(
        opacity: CurvedAnimation(parent: controller, curve: Curves.easeIn),
        child: TitleWrapper(
          title: "Tracking",
          child: CardView(
            padding: const EdgeInsets.only(
              top: Dimens.k16,
              bottom: Dimens.k8,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Dimens.k16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SubtitleTitle(
                            subtitleFontSize: Dimens.k14,
                            title: "NEJ20089934122231",
                            subtitle: "Shipment Number",
                            spaceBetween: Dimens.k8,
                            titleStyle: Theme.of(context).textTheme.titleLarge,
                          ),
                          Image.asset(
                            Images.get(Images.caterpillar),
                            width: Dimens.k55,
                            height: Dimens.k55,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: Dimens.k16,
                      ),
                      const Divider(
                        thickness: Dimens.k2,
                        height: Dimens.k0,
                      ),
                      const SizedBox(
                        height: Dimens.k16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTileSubtitleTitle(
                                  subTitle: "Sender",
                                  title: "Atlanta, 5243",
                                  leading: Images.get(Images.send),
                                ),
                                const SizedBox(
                                  height: Dimens.k32,
                                ),
                                ListTileSubtitleTitle(
                                  subTitle: "Receiver",
                                  title: "Chicago, 6342",
                                  leading: Images.get(Images.receive),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SubtitleTitle(
                                subtitle: "Time",
                                title: "2 day -3 days",
                                spaceBetween: Dimens.k2,
                                titleFontSize: Dimens.k16,
                                subtitleFontSize: Dimens.k14,
                                titlePrefixIcon: OctIcons.dot_fill_24,
                                titlePrefixIconColor:
                                    Theme.of(context).colorScheme.tertiary,
                                titleStyle:
                                    Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(
                                height: Dimens.k32,
                              ),
                              SubtitleTitle(
                                subtitle: "Status",
                                spaceBetween: Dimens.k2,
                                titleFontSize: Dimens.k16,
                                title: "Waiting to collect",
                                subtitleFontSize: Dimens.k14,
                                titleStyle:
                                    Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: Dimens.k16,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: Dimens.k2,
                  height: Dimens.k0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButtonView(
                      text: "+ Add Stop",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
