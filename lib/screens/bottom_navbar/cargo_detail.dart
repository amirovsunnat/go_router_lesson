import 'package:flutter/material.dart';

class CargoDetail extends StatelessWidget {
  static String path = "/cargoes/detail";
  const CargoDetail({super.key, required this.id, required this.data});

  final int id;
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              id.toString(),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(data.toString())
          ],
        ),
      ),
      backgroundColor: Colors.deepOrange,
    );
  }
}
