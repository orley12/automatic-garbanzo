import '../../../../resources/images.dart';

class Vehicle {
  final String image;
  final String title;
  final String subtitle;

  Vehicle({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  Vehicle copyWith({
    String? image,
    String? title,
    String? subtitle,
  }) {
    return Vehicle(
      image: image ?? this.image,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
    );
  }

  @override
  String toString() =>
      'Vehicle(image: $image, title: $title, subtitle: $subtitle)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Vehicle &&
        other.image == image &&
        other.title == title &&
        other.subtitle == subtitle;
  }

  @override
  int get hashCode => image.hashCode ^ title.hashCode ^ subtitle.hashCode;

  static List<Vehicle> get vehicles {
    return [
      Vehicle(
        title: "Ocean freight",
        subtitle: "International",
        image: Images.ship,
      ),
      Vehicle(
        subtitle: "Reliable",
        title: "Cargo freight",
        image: Images.truck,
      ),
      Vehicle(
        subtitle: "Internal",
        title: "Air freight",
        image: Images.airplane,
      ),
    ];
  }
}
