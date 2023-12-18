import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/dimens.dart';
import 'home_screen_provider.dart';
import 'widget/app_bar/home_app_bar.dart';
import 'widget/search_card.dart';
import 'widget/tracking_card.dart';
import 'widget/vehicles_view/vehicles_provider.dart';
import 'widget/vehicles_view/widget/vehicles_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  bool showBackButton = false;
  late final AnimationController _controller1 = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 2300));
  late final AnimationController _controller2 = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 900));
  late final AnimationController _controller3 = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 900));
  late final AnimationController _controller4 = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 900));
  late final AnimationController _controller5 = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 900));

  @override
  void initState() {
    _scheduleAnimations();
    _setPostFrameCallBack();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        controller: _controller1,
        controller2: _controller4,
        controller3: _controller5,
        showBackButton: showBackButton,
        onBackPressed: () {
          _controller4.reverse();
          _controller2.forward();
          _controller3.forward();
        },
        onTap: () {
          _controller4.forward();
          _controller2.reverse();
          _controller3.reverse();
        },
      ),
      body: ListView(
        children: [
          SearchCard(
            visible: showBackButton,
            controller: _controller4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.k12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: Dimens.k24,
                ),
                TrackingCard(
                  controller: _controller2,
                ),
                const SizedBox(
                  height: Dimens.k24,
                ),
              ],
            ),
          ),
          ChangeNotifierProvider(
            create: (_) => VehiclesProvider(),
            child: VehiclesView(
              controller: _controller3,
            ),
          ),
          const SizedBox(
            height: Dimens.k48,
          ),
        ],
      ),
    );
  }

  void _setPostFrameCallBack() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(FocusNode());
      context.read<HomeScreenProvider>().beginAppBarAnimation(_controller1);
    });
  }

  void _scheduleAnimations() {
    setListenerToBeginBackButtonAnimation();
    _setListenerToBeginShipmentTrackingSectionAnimation();
    _setListenerToBeginAvailableVehiclesSectionAnimation();
  }

  void setListenerToBeginBackButtonAnimation() {
    _controller4.addListener(() {
      setState(() {
        showBackButton = _controller4.status == AnimationStatus.forward ||
            _controller4.status == AnimationStatus.completed;
      });
    });
  }

  void _setListenerToBeginAvailableVehiclesSectionAnimation() {
    context
        .read<HomeScreenProvider>()
        .scheduleAnimation(_controller1, _controller3, 500);
  }

  void _setListenerToBeginShipmentTrackingSectionAnimation() {
    context
        .read<HomeScreenProvider>()
        .scheduleAnimation(_controller1, _controller2, 400);
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    super.dispose();
  }
}
