import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BottomNavigationProvider with ChangeNotifier, DiagnosticableTreeMixin {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty("selectedIndex", selectedIndex));
  }

  void onItemTapped(int index, TabController ctrl) {
    setSelectedIndex(index);
    ctrl.animateTo(index);
    notifyListeners();
  }

  void setSelectedIndex(int index) {
    _selectedIndex = index;
  }
}
