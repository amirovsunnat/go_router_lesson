import 'package:flutter/material.dart';
import 'package:go_router_darsi/core/routes/app_routes.dart';
import 'package:go_router_darsi/screens/controllers/dashboard_controller.dart';
import 'package:go_router_darsi/screens/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
    // return ChangeNotifierProvider(
    //   create: (context) => DashboardController(),
    //   child: MaterialApp.router(
    //     routerConfig: router,
    //   ),
    // );
  }
}
