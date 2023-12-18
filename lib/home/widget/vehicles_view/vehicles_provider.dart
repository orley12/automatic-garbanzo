import 'package:flutter/foundation.dart';

import 'model/vehicle.dart';

class VehiclesProvider with ChangeNotifier, DiagnosticableTreeMixin {
  List<Vehicle> get vehicles => Vehicle.vehicles;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty("vehicles", vehicles));
  }
}
