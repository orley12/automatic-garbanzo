import 'package:flutter/material.dart';

import '../text/subtitle_view.dart';
import '../text/title_view.dart';
import 'tile_base.dart';

class TitleSubtitle extends TileBase {
  const TitleSubtitle({
    super.key,
    super.titleColor,
    super.titleStyle,
    super.subTileFlex,
    super.spaceBetween,
    super.titleFontSize,
    super.subtitleColor,
    super.subtitleStyle,
    required super.title,
    super.titlePrefixIcon,
    super.titleSuffixIcon,
    super.subtitleFontSize,
    required super.subtitle,
    super.crossAxisAlignment,
    super.subtitleIconColor,
    super.subtitlePrefixIcon,
    super.titleSuffixIconColor,
    super.titlePrefixIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        TitleView(
          text: title,
          style: titleStyle,
          color: titleColor,
          size: titleFontSize,
          prefixIcon: titlePrefixIcon,
          suffixIcon: titleSuffixIcon,
          prefixIconColor: titlePrefixIconColor,
          suffixIconColor: titleSuffixIconColor,
        ),
        SizedBox(
          height: spaceBetween,
        ),
        SubtitleView(
          text: subtitle,
          style: subtitleStyle,
          color: subtitleColor,
          size: subtitleFontSize,
          flex: subTileFlex,
          prefixIcon: subtitlePrefixIcon,
          prefixIconColor: subtitleIconColor,
        ),
      ],
    );
  }
}
