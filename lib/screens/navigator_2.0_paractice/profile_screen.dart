import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learning/routes/app_routes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 255, 232),
        title: Text("Profile Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is Profile Screen"),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  context.go(AppRoutes.homeScreen);
                },
                child: Text("Back to Home Screen"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
