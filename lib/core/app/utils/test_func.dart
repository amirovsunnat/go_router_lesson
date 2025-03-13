import 'package:flutter/material.dart';
import 'package:go_router_darsi/core/routes/app_routes.dart';
import 'package:go_router_darsi/screens/my_ways.dart';

void testFunc() {
  navigatorKey.currentState!.push(
    MaterialPageRoute(
      builder: (context) => MyWays(),
    ),
  );
}
