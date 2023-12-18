import 'package:flutter/material.dart';

import '../../common/card_view.dart';
import '../../common/chip_view.dart';
import '../../common/text/title_view.dart';
import '../../common/tile/title_subtitle.dart';
import '../../resources/dimens.dart';
import '../../resources/images.dart';
import 'amount_date.dart';

class ShipmentCard extends StatelessWidget {
  final String date;
  final String title;
  final String status;
  final String amount;
  final String subtitle;
  final Color? statusColor;
  final IconData statusIcon;

  const ShipmentCard({
    super.key,
    required this.status,
    required this.statusIcon,
    required this.statusColor,
    required this.title,
    required this.date,
    required this.subtitle,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return CardView(
      margin: const EdgeInsets.symmetric(vertical: Dimens.k8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChipView(
                  color: Theme.of(context).colorScheme.onInverseSurface,
                  child: TitleView(
                    text: status,
                    size: Dimens.k16,
                    color: statusColor,
                    prefixIcon: statusIcon,
                    prefixIconSize: Dimens.k16,
                    prefixIconColor: statusColor,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const SizedBox(
                  height: Dimens.k4,
                ),
                TitleSubtitle(
                  title: title,
                  subTileFlex: 1,
                  spaceBetween: Dimens.k4,
                  subtitleFontSize: Dimens.k14,
                  titleStyle: Theme.of(context).textTheme.titleMedium,
                  subtitle: subtitle,
                ),
                const SizedBox(
                  height: Dimens.k12,
                ),
                AmountDate(
                  date: date,
                  amount: amount,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.k20),
            child: Image.asset(
              Images.get(Images.box),
              height: Dimens.k72,
              width: Dimens.k72,
            ),
          ),
        ],
      ),
    );
  }
}
