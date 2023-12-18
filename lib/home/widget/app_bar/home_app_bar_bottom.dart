import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

import '../../../common/circular_image.dart';
import '../../../resources/dimens.dart';
import '../../../common/text_field.dart';

class MoveMateAppBarBottom extends PreferredSize {
  final bool showBackButton;
  final void Function() onTap;
  final void Function() onBackPressed;
  final AnimationController controller;
  final AnimationController controller2;

  const MoveMateAppBarBottom({
    super.key,
    required this.onTap,
    required this.controller,
    required this.controller2,
    required this.onBackPressed,
    required this.showBackButton,
    super.child = const SizedBox(),
    super.preferredSize = const Size(double.infinity, /* Dimens.k */ 60),
  });

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(begin: Offset.zero, end: const Offset(0.0, -0.6))
          .animate(
        CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn),
      ),
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.symmetric(horizontal: Dimens.k16),
        child: Column(
          children: [
            const SizedBox(
              height: Dimens.k16,
            ),
            Row(
              children: [
                Visibility(
                  visible: showBackButton,
                  child: SlideTransition(
                    position: Tween<Offset>(
                            begin: const Offset(-1.0, 0.0), end: Offset.zero)
                        .animate(CurvedAnimation(
                            parent: controller, curve: Curves.fastOutSlowIn)),
                    child: IconButton(
                      onPressed: () {
                        onBackPressed();
                        controller.reverse();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InputField(
                    onTap: onTap,
                    radius: Dimens.k30,
                    showDivider: false,
                    prefixIcon: _prefixIcon(context),
                    suffixIcon: _suffixIcon(context),
                    hintText: "Enter the receipt number ...",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: Dimens.k20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _prefixIcon(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: Dimens.k12),
      child: Icon(
        CommunityMaterialIcons.magnify,
        size: Dimens.k24,
        color: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
    );
  }

  Widget _suffixIcon(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: Dimens.k8),
      child: CircularImage(
        icon: CommunityMaterialIcons.flip_vertical,
        size: Dimens.k24,
        radius: Dimens.k24,
        color: Theme.of(context).colorScheme.onSecondary,
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
