import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'checkout/checkout_screen.dart';
import 'dash_board/widget/bottom_navigation_bar/bottom_navigation_provider.dart';
import 'dash_board/dash_board_screen.dart';
import 'resources/themes.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
          path: '/',
          builder: (_, __) => ChangeNotifierProvider(
                create: (_) => BottomNavigationProvider(),
                child: const DashBoardScreen(),
              ),
          routes: [
            GoRoute(
              path: "checkout",
              builder: (_, __) => const CheckoutScreen(),
            ),
          ]),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => _closeKeyBoard(context),
      child: MaterialApp.router(
        title: 'MoveMate',
        theme: Themes.light,
        darkTheme: Themes.dark,
        themeMode: ThemeMode.system,
        builder: (context, child) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1920, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(double.infinity, name: '4K'),
          ],
        ),
        routerConfig: _router,
      ),
    );
  }

  void _closeKeyBoard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      currentFocus.focusedChild!.unfocus();
    }
  }
}
