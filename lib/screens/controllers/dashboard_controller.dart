import 'package:flutter/material.dart';
import 'package:go_router_darsi/screens/bottom_navbar/cargoes_screen.dart';

class DashboardController extends ChangeNotifier {
  String currentPath = CargoesScreen.path;
  int currentIndex = 0;

  void changePath(String newPath) {
    currentPath = newPath;
    notifyListeners();
  }
}
