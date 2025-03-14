import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_darsi/core/routes/app_router_observer.dart';
import 'package:go_router_darsi/core/routes/app_routes_names.dart';
import 'package:go_router_darsi/screens/bottom_navbar/cargo_detail.dart';
import 'package:go_router_darsi/screens/bottom_navbar/cargoes_screen.dart';
import 'package:go_router_darsi/screens/bottom_navbar/dashboard_screen.dart';
import 'package:go_router_darsi/screens/bottom_navbar/drivers_screen.dart';
import 'package:go_router_darsi/screens/bottom_navbar/my_cargoes_screen.dart';
import 'package:go_router_darsi/screens/error_screen.dart';
import 'package:go_router_darsi/screens/login_screen.dart';
import 'package:go_router_darsi/screens/profile_screen.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> bottomNavBarKey = GlobalKey<NavigatorState>();

GoRouter router = GoRouter(
  initialLocation: CargoesScreen.path,
  observers: [
    AppRouterObserver(),
  ],
  navigatorKey: navigatorKey,
  routes: <RouteBase>[
    GoRoute(
      path: '${CargoDetail.path}/:id',
      pageBuilder: (context, state) {
        final id = int.tryParse(state.pathParameters['id'] ?? '0') ?? 0;
        return CustomTransitionPage(
          transitionDuration: Duration(milliseconds: 500),
          key: state.pageKey,
          child: CargoDetail(
            id: id,
            data: state.extra as Map<String, dynamic>,
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                end: Offset.zero,
                begin: const Offset(-1.5, 0.0),
              ).animate(animation),
              child: child,
            );
            // FadeTransition(
            //   opacity:
            //       CurveTween(curve: Curves.easeInOutCirc).animate(animation),
            //   child: child,
            // );
          },
        );
      },
    ),
    ShellRoute(
      navigatorKey: bottomNavBarKey,
      builder: (context, state, child) => DashboardScreen(
        state: state,
        child: child,
      ),
      routes: <RouteBase>[
        GoRoute(
          path: CargoesScreen.path,
          builder: (context, state) => CargoesScreen(),
        ),
        GoRoute(
          path: DriversScreen.path,
          builder: (context, state) => DriversScreen(),
        ),
        GoRoute(
          path: MyCargoesScreen.path,
          builder: (context, state) => MyCargoesScreen(),
        ),
      ],
    ),
    GoRoute(
      name: "cargoes",
      path: CargoesScreen.path,
      builder: (context, state) {
        return CargoesScreen();
      },
    ),
    GoRoute(
      name: AppRoutesNames.profileRouteName,
      path: ProfileScreen.path,
      builder: (context, state) {
        return ProfileScreen();
      },
    ),
    GoRoute(
      path: LoginScreen.path,
      builder: (context, state) {
        return LoginScreen();
      },
    )
  ],
  errorBuilder: (context, state) {
    return ErrorScreen();
  },
);
