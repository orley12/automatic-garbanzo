import 'strings.dart';

class Images {
  const Images._();
  static const String box = "box.png";
  static const String ship = "ship.png";
  static const String send = "send.png";
  static const String user = "user.jpg";
  static const String logo = "logo.png";
  static const String box_2 = "box_2.png";
  static const String truck = "truck.png";
  static const String receive = "recieve.png";
  static const String airplane = "airplane.png";
  static const String caterpillar = "catapillar.png";

  static String get(String image) => "${Strings.imagePath}$image";
}
