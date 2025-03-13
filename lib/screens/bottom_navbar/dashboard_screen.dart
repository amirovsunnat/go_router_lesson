import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_darsi/core/routes/app_routes.dart';
import 'package:go_router_darsi/screens/bottom_navbar/cargoes_screen.dart';
import 'package:go_router_darsi/screens/bottom_navbar/drivers_screen.dart';
import 'package:go_router_darsi/screens/bottom_navbar/my_cargoes_screen.dart';
import 'package:go_router_darsi/screens/controllers/dashboard_controller.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  static String path = "/dashboard";
  DashboardScreen({super.key, required this.child, required this.state});

  GoRouterState state;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardController>(
      builder: (context, dashboardController, childD) {
        return Scaffold(
          key: GlobalKey<ScaffoldState>(),
          body: child,
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                if (value == 0) {
                  context.go(CargoesScreen.path);
                } else if (value == 1) {
                  context.go(DriversScreen.path);
                } else if (value == 2) {
                  context.go(MyCargoesScreen.path);
                }
                dashboardController.currentIndex = value;
              },
              currentIndex: dashboardController.currentIndex,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.fire_truck), label: "Cargoes"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.car_repair), label: "Drivers"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.money), label: "My Cargoes"),
              ]),
        );
      },
    );
  }
}
