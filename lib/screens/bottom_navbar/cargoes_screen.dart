import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_darsi/screens/bottom_navbar/cargo_detail.dart';

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
            leading: IconButton(
              onPressed: () {
                context.go('${CargoDetail.path}/$index',
                    extra: {"name": "Sunnat", "surname": "Amirov"});
              },
              icon: Icon(Icons.fire_extinguisher),
              color: Colors.red,
            ),
          );
        },
      ),
    );
  }
}
