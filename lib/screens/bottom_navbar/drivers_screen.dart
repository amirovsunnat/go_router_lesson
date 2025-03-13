import 'package:flutter/material.dart';

class DriversScreen extends StatelessWidget {
  static String path = "/driver-screen";
  const DriversScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drivers"),
      ),
    );
  }
}
