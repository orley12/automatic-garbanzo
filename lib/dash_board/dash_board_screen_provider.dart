import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DashBoardScreenProvider with ChangeNotifier, DiagnosticableTreeMixin {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty("selectedIndex", selectedIndex));
  }

  void onItemTapped(int index, TabController ctrl) {
    _selectedIndex = index;
    ctrl.animateTo(index);
    notifyListeners();
  }
}
