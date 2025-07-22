import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learning/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("Home Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is Home Screen"),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  context.go(AppRoutes.aboutScreen);
                },
                child: Text("Got to About Screen"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
