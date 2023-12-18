import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:move_mate/resources/dimens.dart';

class BottomNavigationBarView extends StatelessWidget {
  final double height;
  final int currentIndex;
  final void Function(int)? onTap;

  const BottomNavigationBarView({
    Key? key,
    required this.onTap,
    required this.height,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedSlide(
            duration: const Duration(milliseconds: 300),
            offset: Offset(
              (screenWidth > 450 ? -2.0 : -1.5) +
                  (_multiplier(screenWidth) * currentIndex),
              0.0,
            ),
            child: Container(
              width: Dimens.k113,
              height: 6,
              color: Theme.of(context).primaryColor,
            ),
          ),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: Theme.of(context).textTheme.labelMedium,
            unselectedLabelStyle: Theme.of(context).textTheme.labelSmall,
            selectedItemColor: Theme.of(context).colorScheme.onPrimaryContainer,
            unselectedItemColor: Theme.of(context).colorScheme.onSurfaceVariant,
            items: _navigationBarItems,
            currentIndex: currentIndex,
            onTap: onTap,
          ),
        ],
      ),
    );
  }

  List<BottomNavigationBarItem> get _navigationBarItems => [
        const BottomNavigationBarItem(
          icon: Icon(
            CommunityMaterialIcons.home_variant_outline,
          ),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            CommunityMaterialIcons.calculator_variant_outline,
          ),
          label: 'Calculate',
        ),
        const BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.clockRotateLeft),
          label: 'Shipment',
        ),
        const BottomNavigationBarItem(
          icon: Icon(CommunityMaterialIcons.account_outline),
          label: 'Profile',
        ),
      ];

  double _multiplier(double screenWidth) {
    if (currentIndex == 0) {
      return 0.5;
    } else {
      return screenWidth > 450 ? 1.3 : 1.0;
    }
  }
}
