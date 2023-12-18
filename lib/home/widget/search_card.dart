import 'package:flutter/material.dart';

import 'package:move_mate/common/animated_list_view.dart';
import 'package:move_mate/common/card_view.dart';

import '../../common/tile/list_tile_title_subtitle.dart';

class SearchCard extends StatelessWidget {
  final bool visible;
  final AnimationController controller;
  const SearchCard({
    Key? key,
    required this.controller,
    required this.visible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: SlideTransition(
        position: Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero)
            .animate(CurvedAnimation(
                parent: controller, curve: Curves.fastOutSlowIn)),
        child: FadeTransition(
          opacity: CurvedAnimation(parent: controller, curve: Curves.easeIn),
          child: CardView(
            child: MoveMateListView(
              initialItemCount: 4,
              scrollDirection: Axis.vertical,
              itemBuilder: (_, int index) {
                return ListTileTitleSubtitle(index: index);
              },
            ),
          ),
        ),
      ),
    );
  }
}
