import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_octicons/flutter_octicons.dart';
import 'package:ionicons/ionicons.dart';

import '../../../resources/dimens.dart';
import '../../../resources/images.dart';
import '../../../common/circular_image.dart';
import 'home_app_bar_bottom.dart';
import '../../../common/tile/subtitle_title.dart';

class HomeAppBar extends PreferredSize {
  final bool showBackButton;
  final void Function() onTap;
  final void Function() onBackPressed;
  final AnimationController controller;
  final AnimationController controller2;
  final AnimationController controller3;

  const HomeAppBar({
    super.key,
    required this.onTap,
    required this.controller,
    required this.controller2,
    required this.controller3,
    required this.onBackPressed,
    required this.showBackButton,
    super.child = const SizedBox(),
    super.preferredSize = const Size(double.infinity, Dimens.k156),
  });

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(begin: const Offset(0.0, -1.0), end: Offset.zero)
          .animate(
              CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn)),
      child: Column(
        children: [
          AppBar(
            leading: _leading,
            title: _title(context),
            titleSpacing: Dimens.k0,
            leadingWidth: Dimens.k80,
            actions: _trailing(context),
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
          MoveMateAppBarBottom(
            onTap: onTap,
            controller: controller2,
            controller2: controller3,
            onBackPressed: onBackPressed,
            showBackButton: showBackButton,
          )
        ],
      ),
    );
  }

  Widget get _leading {
    return FadeTransition(
      opacity: Tween<double>(begin: 1, end: 0).animate(
          CurvedAnimation(parent: controller2, curve: Curves.fastOutSlowIn)),
      child: Center(
        child: CircularImage(
          radius: Dimens.k24,
          image: Images.get(Images.user),
        ),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return FadeTransition(
      opacity: Tween<double>(begin: 1, end: 0).animate(
          CurvedAnimation(parent: controller2, curve: Curves.fastOutSlowIn)),
      child: SubtitleTitle(
        subtitle: " Your location",
        title: "Wertheimer, Illinois ",
        subtitlePrefixIcon: Ionicons.navigate,
        titleSuffixIcon: OctIcons.chevron_down_12,
        titleColor: Theme.of(context).colorScheme.onPrimary,
        subtitleColor: Theme.of(context).colorScheme.primaryContainer,
        titleSuffixIconColor: Theme.of(context).colorScheme.onPrimary,
        subtitleIconColor: Theme.of(context).colorScheme.primaryContainer,
      ),
    );
  }

  List<Widget> _trailing(BuildContext context) {
    return [
      FadeTransition(
        opacity: Tween<double>(begin: 1, end: 0).animate(
            CurvedAnimation(parent: controller2, curve: Curves.fastOutSlowIn)),
        child: Center(
          child: CircularImage(
            size: Dimens.k32,
            radius: Dimens.k24,
            icon: CommunityMaterialIcons.bell_outline,
            color: Theme.of(context).colorScheme.onSurface,
            backgroundColor: Theme.of(context).colorScheme.surface,
          ),
        ),
      ),
      const SizedBox(
        width: Dimens.k16,
      )
    ];
  }
}
