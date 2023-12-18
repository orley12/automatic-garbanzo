import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'tab/shipment/shipment_view.dart';
import 'shipment_screen_provider.dart';
import 'widget/shipment_app_bar.dart';

class ShipmentScreen extends StatelessWidget {
  final void Function() onBackPressed;

  const ShipmentScreen({
    super.key,
    required this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: ShipmentAppBar(onBackPressed: onBackPressed),
        body: TabBarView(
          children: [
            ShipmentView(
              shipments: context.watch<ShipmentScreenProvider>().shipments,
            ),
            const ShipmentView(shipments: []),
            ShipmentView(
              shipments:
                  context.watch<ShipmentScreenProvider>().inProgressShipments,
            ),
            const ShipmentView(shipments: []),
            const ShipmentView(shipments: []),
          ],
        ),
      ),
    );
  }
}
