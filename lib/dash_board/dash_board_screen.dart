import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home/home_screen_provider.dart';
import '../shipment/shipment_screen_provider.dart';
import '../shipment/widget/shipment_app_bar_provider.dart';
import 'widget/bottom_navigation_bar/bottom_navigation_provider.dart';
import '../calculate/calculate_view.dart';
import '../home/home_screen.dart';
import '../profile/profile_view.dart';
import '../shipment/shipment_screen.dart';
import 'widget/bottom_navigation_bar/bottom_navigation_bar.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabCtrl;
  Offset offset = const Offset(0.0, 1.0);
  double _navBarHeight = Platform.isIOS ? 105 : 65;
  final GlobalKey key = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _tabCtrl = TabController(length: 4, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() => offset = Offset.zero);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: TabBarView(
        controller: _tabCtrl,
        children: [
          ChangeNotifierProvider(
            create: (_) => HomeScreenProvider(),
            child: const HomeScreen(),
          ),
          MultiProvider(
            providers: [
              ListenableProvider(create: (_) => ShipmentAppBarProvider()),
              ListenableProvider(create: (_) => ShipmentScreenProvider()),
            ],
            child: ShipmentScreen(onBackPressed: _onBackPressed),
          ),
          CalculateView(onBackPressed: _onBackPressed),
          ProfileView(onBackPressed: _onBackPressed),
        ],
      ),
      bottomNavigationBar: AnimatedSlide(
        duration: const Duration(milliseconds: 700),
        offset: offset,
        onEnd: () {
          setState(() {
            if (offset.dy == 1.0) {
              _navBarHeight = 0;
            } else {
              _navBarHeight = Platform.isIOS ? 105 : 65;
            }
          });
        },
        child: BottomNavigationBarView(
          key: key,
          height: _navBarHeight,
          currentIndex: context.watch<BottomNavigationProvider>().selectedIndex,
          onTap: (index) {
            setState(() {
              if (index != 0) {
                offset = const Offset(0.0, 1.0);
              } else {
                offset = const Offset(0.0, 0.0);
              }
            });
            Provider.of<BottomNavigationProvider>(context, listen: false)
                .onItemTapped(index, _tabCtrl);
          },
        ),
      ),
    );
  }

  void _onBackPressed() {
    setState(() => offset = Offset.zero);
    Provider.of<BottomNavigationProvider>(context, listen: false)
        .onItemTapped(0, _tabCtrl);
  }
}
