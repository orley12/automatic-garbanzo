import 'package:flutter/material.dart';
import 'package:move_mate/shipment/model/shipment.dart';

import '../../common/animated_list_view.dart';
import '../../resources/dimens.dart';
import 'shipment_card.dart';

class Shipments extends StatelessWidget {
  final List<Shipment> shipments;

  const Shipments({
    super.key,
    required this.shipments,
  });

  @override
  Widget build(BuildContext context) {
    return MoveMateListView(
      initialItemCount: shipments.length,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.symmetric(horizontal: Dimens.k16),
      itemBuilder: (_, int index) {
        return ShipmentCard(
          date: shipments[index].date,
          title: shipments[index].title,
          amount: shipments[index].amount,
          subtitle: shipments[index].subtitle,
          status: shipments[index].status.status,
          statusColor: _getColor(context, shipments[index].status),
          statusIcon: shipments[index].status.statusIcon,
        );
      },
    );
  }

  Color _getColor(BuildContext context, Status status) {
    switch (status) {
      case Status.inProgress:
        return Theme.of(context).colorScheme.tertiary;
      case Status.loading:
        return Theme.of(context).colorScheme.outline;
      case Status.pending:
        return Theme.of(context).colorScheme.secondary;
      default:
        return Theme.of(context).colorScheme.tertiary;
    }
  }
}
