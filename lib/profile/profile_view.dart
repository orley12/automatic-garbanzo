import 'package:flutter/material.dart';

import '../common/app_bar/primary_app_bar.dart';

class ProfileView extends StatelessWidget {
  final void Function()? onBackPressed;

  const ProfileView({
    super.key,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: PrimaryAppBar(
        title: "Profile",
        onBackPressed: onBackPressed,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      body: const SizedBox(),
    );
  }
}
