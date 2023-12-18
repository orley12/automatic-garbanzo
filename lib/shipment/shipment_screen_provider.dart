import 'package:flutter/foundation.dart';

import 'model/shipment.dart';

class ShipmentScreenProvider with ChangeNotifier, DiagnosticableTreeMixin {
  List<Shipment> get inProgressShipments =>
      Shipment.shipments.where((e) => e.status == Status.inProgress).toList();

  List<Shipment> get shipments => Shipment.shipments;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty("shipments", shipments));
    properties
        .add(IterableProperty("inProgressShipments", inProgressShipments));
  }
}
