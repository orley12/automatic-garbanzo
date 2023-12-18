import 'package:flutter/material.dart';

import '../../../common/text/title_view.dart';
import '../../../resources/dimens.dart';
import '../../model/shipment.dart';
import '../../widget/shipments.dart';

class ShipmentView extends StatelessWidget {
  final List<Shipment> shipments;

  const ShipmentView({
    super.key,
    required this.shipments,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: Dimens.k24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.k16),
          child: TitleView(
            text: "Shipments",
            size: Dimens.k20,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(
          height: Dimens.k8,
        ),
        Expanded(
          child: Shipments(
            shipments: shipments,
          ),
        )
      ],
    );
  }
}
