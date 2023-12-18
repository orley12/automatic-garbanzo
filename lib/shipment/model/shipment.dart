import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Shipment {
  final String date;
  final String title;
  final String amount;
  final Status status;
  final String subtitle;

  Shipment({
    required this.date,
    required this.title,
    required this.amount,
    required this.status,
    required this.subtitle,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Shipment &&
        other.date == date &&
        other.title == title &&
        other.amount == amount &&
        other.status == status &&
        other.subtitle == subtitle;
  }

  @override
  int get hashCode {
    return date.hashCode ^
        title.hashCode ^
        amount.hashCode ^
        status.hashCode ^
        subtitle.hashCode;
  }

  Shipment copyWith({
    String? date,
    String? title,
    String? amount,
    Status? status,
    String? subtitle,
  }) {
    return Shipment(
      date: date ?? this.date,
      title: title ?? this.title,
      amount: amount ?? this.amount,
      status: status ?? this.status,
      subtitle: subtitle ?? this.subtitle,
    );
  }

  @override
  String toString() {
    return 'Shipment(date: $date, title: $title, amount: $amount, status: $status, subtitle: $subtitle)';
  }

  static List<Shipment> get shipments {
    return [
      Shipment(
        status: Status.inProgress,
        title: "Arriving today!",
        subtitle:
            "Your delivery, #NEJ20089934122231 from Atlanta, is arriving today!",
        date: "Sep 20,2023",
        amount: "\$1400 USD",
      ),
      Shipment(
        status: Status.pending,
        title: "Arriving today!",
        subtitle:
            "Your delivery, #NEJ20089934122231 from Atlanta, is arriving today!",
        date: "Sep 20,2023",
        amount: "\$650 USD",
      ),
      Shipment(
        status: Status.pending,
        title: "Arriving today!",
        subtitle:
            "Your delivery, #NEJ20089934122231 from Atlanta, is arriving today!",
        date: "Sep 20,2023",
        amount: "\$650 USD",
      ),
      Shipment(
        status: Status.loading,
        title: "Arriving today!",
        subtitle:
            "Your delivery, #NEJ20089934122231 from Atlanta, is arriving today!",
        date: "Sep 20,2023",
        amount: "\$1400 USD",
      ),
      Shipment(
        status: Status.inProgress,
        title: "Arriving today!",
        subtitle:
            "Your delivery, #NEJ20089934122231 from Atlanta, is arriving today!",
        date: "Sep 20,2023",
        amount: "\$1400 USD",
      ),
      Shipment(
        status: Status.inProgress,
        title: "Arriving today!",
        subtitle:
            "Your delivery, #NEJ20089934122231 from Atlanta, is arriving today!",
        date: "Sep 20,2023",
        amount: "\$3570 USD",
      ),
    ];
  }
}

enum Status {
  loading(" loading", CommunityMaterialIcons.rotate_right),
  pending(" pending", FontAwesomeIcons.clockRotateLeft),
  inProgress(" in-progress", FontAwesomeIcons.arrowsRotate);

  const Status(this.status, this.statusIcon);

  final String status;
  final IconData statusIcon;
}




// MaterialIcons  Entypo circular-graph MaterialIcons history-toggle-off MaterialIcons rotate-right

