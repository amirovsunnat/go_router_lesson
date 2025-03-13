import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Something wrong happened, please try again later....",
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
