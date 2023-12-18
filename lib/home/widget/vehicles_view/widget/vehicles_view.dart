import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/animated_list_view.dart';
import '../../../../common/title_wrapper.dart';
import '../../../../resources/dimens.dart';
import '../vehicles_provider.dart';
import 'vehicle_view.dart';

class VehiclesView extends StatefulWidget {
  final AnimationController controller;

  const VehiclesView({super.key, required this.controller});

  @override
  State<VehiclesView> createState() => _VehiclesViewState();
}

class _VehiclesViewState extends State<VehiclesView> {
  double position = -98;
  double size = Dimens.k138;

  @override
  void initState() {
    _scheduleImageAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final VehiclesProvider provider = context.watch<VehiclesProvider>();

    return SlideTransition(
      position: Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero)
          .animate(CurvedAnimation(
              parent: widget.controller, curve: Curves.fastOutSlowIn)),
      child: FadeTransition(
        opacity:
            CurvedAnimation(parent: widget.controller, curve: Curves.easeIn),
        child: TitleWrapper(
          title: "Available vehicles",
          padding: const EdgeInsets.only(left: Dimens.k12),
          child: SizedBox(
            height: Dimens.k220,
            child: MoveMateListView(
              initialItemCount: provider.vehicles.length,
              padding: const EdgeInsets.symmetric(horizontal: Dimens.k12),
              itemBuilder: (BuildContext context, int index) {
                return VehicleView(
                  size: size,
                  position: position,
                  controller: widget.controller,
                  image: provider.vehicles[index].image,
                  title: provider.vehicles[index].title,
                  subtitle: provider.vehicles[index].subtitle,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _scheduleImageAnimation() {
    widget.controller.addListener(() {
      // ignore: unnecessary_this
      if (this.mounted) {
        setState(() {
          position = -20;
          size = Dimens.k168;
        });
      }
    });
  }
}
