import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String path = "/";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
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
