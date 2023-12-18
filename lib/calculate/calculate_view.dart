import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:move_mate/common/card_view.dart';
import 'package:move_mate/common/text_field.dart';
import 'package:move_mate/common/tile/title_subtitle.dart';

import '../common/app_bar/primary_app_bar.dart';
import '../common/button/outlined_button_view.dart';
import '../common/button/text_button_view.dart';
import '../common/drop_down_button_view.dart';
import '../common/text/title_view.dart';
import '../resources/dimens.dart';

class CalculateView extends StatelessWidget {
  final void Function()? onBackPressed;

  const CalculateView({
    super.key,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: PrimaryAppBar(
        title: "Calculate",
        onBackPressed: onBackPressed,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.k16),
        children: [
          const SizedBox(
            height: Dimens.k24,
          ),
          TitleView(
            text: "Destination",
            size: Dimens.k20,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: Dimens.k24,
          ),
          CardView(
            child: Column(
              children: [
                InputField(
                  fontSize: Dimens.k18,
                  hintText: "Sender location",
                  prefixIcon:
                      const Icon(Icons.unarchive_outlined, size: Dimens.k28),
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  fillColor: Theme.of(context).colorScheme.onInverseSurface,
                ),
                const SizedBox(
                  height: Dimens.k16,
                ),
                InputField(
                  fontSize: Dimens.k18,
                  hintText: "Receiver location",
                  prefixIcon:
                      const Icon(Icons.archive_outlined, size: Dimens.k28),
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  fillColor: Theme.of(context).colorScheme.onInverseSurface,
                ),
                const SizedBox(
                  height: Dimens.k16,
                ),
                InputField(
                  fontSize: Dimens.k18,
                  hintText: "Approx weight",
                  prefixIcon:
                      const Icon(Icons.scale_outlined, size: Dimens.k24),
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  fillColor: Theme.of(context).colorScheme.onInverseSurface,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: Dimens.k24,
          ),
          TitleSubtitle(
            title: "Packaging",
            spaceBetween: Dimens.k4,
            subtitleFontSize: Dimens.k20,
            subtitle: "What are you sending?",
            titleStyle: Theme.of(context).textTheme.titleLarge,
            subtitleStyle: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: Dimens.k24,
          ),
          const DropDownButtonView(),
          const SizedBox(
            height: Dimens.k24,
          ),
          TitleSubtitle(
            title: "Categories",
            spaceBetween: Dimens.k4,
            subtitleFontSize: Dimens.k20,
            subtitle: "What are you sending?",
            titleStyle: Theme.of(context).textTheme.titleLarge,
            subtitleStyle: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: Dimens.k24,
          ),
          const Wrap(
            spacing: Dimens.k12,
            runSpacing: Dimens.k8,
            children: [
              OutlinedButtonView(text: "Documents"),
              OutlinedButtonView(text: "Glass"),
              OutlinedButtonView(text: "Liquid"),
              OutlinedButtonView(text: "Food"),
              OutlinedButtonView(text: "Electronic"),
              OutlinedButtonView(text: "Product"),
              OutlinedButtonView(text: "Others"),
            ],
          ),
          const SizedBox(
            height: Dimens.k48,
          ),
          TextButtonView(
            text: "Calculate",
            onPressed: () => context.go('/checkout'),
            size: const Size(double.infinity, Dimens.k56),
            color: Theme.of(context).colorScheme.onSecondary,
            backgroundColor: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(
            height: Dimens.k48,
          ),
        ],
      ),
    );
  }
}
