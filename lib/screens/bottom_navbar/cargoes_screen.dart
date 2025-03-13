import 'package:flutter/material.dart';

class CargoesScreen extends StatelessWidget {
  static String path = "/cargoes";
  const CargoesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cargoes"),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Indexdagi element: $index"),
            leading: Icon(
              Icons.fire_extinguisher,
              color: Colors.red,
            ),
          );
        },
      ),
    );
  }
}
