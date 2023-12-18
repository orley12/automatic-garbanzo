import 'package:flutter/foundation.dart';

import '../model/tab_info.dart';

class ShipmentAppBarProvider with ChangeNotifier, DiagnosticableTreeMixin {
  int _selectedIndex = 0;

  List<TabInfo> get tabs {
    return [
      TabInfo(
        title: "All",
        label: "3",
      ),
      TabInfo(
        title: "Completed",
        label: "5",
      ),
      TabInfo(
        title: "In progress",
        label: "3",
      ),
      TabInfo(
        title: "Pending order",
        label: "4",
      ),
      TabInfo(
        title: "Cancelled",
        label: "1",
      ),
    ];
  }

  int get selectedIndex => _selectedIndex;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty("selectedIndex", selectedIndex));
    properties.add(IterableProperty("tabs", tabs));
  }

  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
