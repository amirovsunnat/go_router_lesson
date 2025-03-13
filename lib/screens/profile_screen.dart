import 'package:flutter/material.dart';
import 'package:go_router_darsi/core/app/utils/test_func.dart';

class ProfileScreen extends StatelessWidget {
  static String path = "/profile-screen";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          IconButton(
            onPressed: () {
              testFunc();
            },
            icon: Icon(
              Icons.drive_eta,
            ),
          ),
        ],
      ),
    );
  }
}
