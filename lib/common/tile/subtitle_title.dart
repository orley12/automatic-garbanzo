import 'package:flutter/material.dart';

import '../text/subtitle_view.dart';
import '../text/title_view.dart';
import 'tile_base.dart';

class SubtitleTitle extends TileBase {
  const SubtitleTitle({
    super.key,
    super.titleColor,
    super.titleStyle,
    super.subTileFlex,
    super.spaceBetween,
    super.subtitleIconColor,
    super.titleFontSize,
    super.subtitleColor,
    super.subtitleStyle,
    required super.title,
    super.titlePrefixIcon,
    super.titleSuffixIcon,
    super.subtitleFontSize,
    required super.subtitle,
    super.subtitlePrefixIcon,
    super.titleSuffixIconColor,
    super.titlePrefixIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubtitleView(
          text: subtitle,
          flex: subTileFlex,
          style: subtitleStyle,
          color: subtitleColor,
          size: subtitleFontSize,
          prefixIcon: subtitlePrefixIcon,
          prefixIconColor: subtitleIconColor,
        ),
        SizedBox(
          height: spaceBetween,
        ),
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
      ],
    );
  }
}
