import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreenProvider with ChangeNotifier, DiagnosticableTreeMixin {
  void scheduleAnimation(AnimationController controller1,
      AnimationController controller2, int elapsedTime) {
    controller1.addListener(() {
      if ((controller1.lastElapsedDuration?.inMilliseconds ?? 0) >=
          elapsedTime) {
        controller2.forward();
      }
    });
  }

  void beginAppBarAnimation(AnimationController controller) {
    controller.forward();
  }
}
