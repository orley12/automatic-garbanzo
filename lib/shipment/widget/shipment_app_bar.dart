import 'package:flutter/material.dart';

import 'package:move_mate/common/app_bar/primary_app_bar.dart';
import 'package:provider/provider.dart';

import '../../common/tab_item.dart';
import '../../resources/dimens.dart';
import '../model/tab_info.dart';
import 'shipment_app_bar_provider.dart';

class ShipmentAppBar extends PreferredSize {
  final void Function()? onBackPressed;

  const ShipmentAppBar({
    super.key,
    this.onBackPressed,
    super.child = const SizedBox(),
    super.preferredSize = const Size(double.infinity, Dimens.k96),
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryAppBar(
      title: "Shipment history",
      onBackPressed: onBackPressed,
      bottom: const PrimaryAppBarBottom(),
    );
  }
}

class PrimaryAppBarBottom extends PreferredSize {
  const PrimaryAppBarBottom({
    super.key,
    super.preferredSize = const Size(double.infinity, Dimens.k56),
    super.child = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      indicatorWeight: Dimens.k4,
      tabAlignment: TabAlignment.start,
      padding: EdgeInsets.zero,
      labelColor: Theme.of(context).colorScheme.onPrimary,
      indicatorColor: Theme.of(context).colorScheme.secondary,
      unselectedLabelColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: context.read<ShipmentAppBarProvider>().onItemTapped,
      tabs: context
          .read<ShipmentAppBarProvider>()
          .tabs
          .asMap()
          .map((int key, TabInfo value) {
            return MapEntry(
              key,
              TabItem(
                title: value.title,
                label: value.label,
                isSelected:
                    context.watch<ShipmentAppBarProvider>().selectedIndex ==
                        key,
              ),
            );
          })
          .values
          .toList(),
    );
  }
}
