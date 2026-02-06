import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;

  const ProfilePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:   Text("Profile")),
      body: Center(child: Text("Hello, $username")),
    );
  }
}
