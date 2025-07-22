import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learning/routes/app_routes.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 37, 14, 79),
        title: Text("About Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is About Screen"),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  context.go(AppRoutes.profileScreen);
                },
                child: Text("Got to Profile Screen"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
