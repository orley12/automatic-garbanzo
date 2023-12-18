import 'package:flutter/material.dart';

import '../resources/dimens.dart';
import 'chip_view.dart';
import 'text/title_view.dart';

class TabItem extends StatelessWidget {
  final String title;
  final String label;
  final bool isSelected;

  const TabItem({
    Key? key,
    required this.title,
    required this.label,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        children: [
          TitleView(
            text: title,
            color: isSelected
                ? Theme.of(context).colorScheme.onPrimary
                : Theme.of(context).colorScheme.primaryContainer,
          ),
          const SizedBox(
            width: Dimens.k4,
          ),
          ChipView(
            color: isSelected ? Theme.of(context).colorScheme.secondary : null,
            child: TitleView(
              text: label,
              size: Dimens.k16,
              color: isSelected
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.primaryContainer,
            ),
          )
        ],
      ),
    );
  }
}
