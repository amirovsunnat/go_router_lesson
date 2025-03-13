import 'package:flutter/material.dart';

class MyCargoesScreen extends StatelessWidget {
  static String path = "/cargoes/my";
  const MyCargoesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My cargoes"),
      ),
    );
  }
}
