import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:move_mate/common/text/title_view.dart';
import 'package:move_mate/resources/dimens.dart';

import '../resources/images.dart';

class DropDownButtonView extends StatelessWidget {
  const DropDownButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      hint: TitleView(
        text: "Box",
        style: Theme.of(context).textTheme.titleLarge,
      ),
      isExpanded: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white /* Theme.of(context).colorScheme.onSurface */,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: Dimens.k16,
            ),
            Image.asset(
              Images.get(Images.box),
              width: Dimens.k28,
              height: Dimens.k28,
            ),
            const SizedBox(
              width: Dimens.k8,
            ),
            SizedBox(
              height: Dimens.k30,
              child: VerticalDivider(
                width: Dimens.k10,
                thickness: Dimens.k0_5,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(
              width: Dimens.k8,
            ),
          ],
        ),
      ),
      icon: const Icon(CommunityMaterialIcons.chevron_down),
      onChanged: (value) {},
      items: const [],
    );
  }
}
