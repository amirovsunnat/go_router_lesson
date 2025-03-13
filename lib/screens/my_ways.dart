import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyWays extends StatelessWidget {
  const MyWays({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My ways"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.push("/cars");
          },
          child: Text(
            "Go to cars",
          ),
        ),
      ),
    );
  }
}
