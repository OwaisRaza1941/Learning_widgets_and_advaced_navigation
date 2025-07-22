import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learning/routes/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => context.go('${AppRoutes.profilePage}/owais'),
              child: const Text("Go to Profile"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go('/product/1'),
              child: const Text("Go to Product"),
            ),
          ],
        ),
      ),
    );
  }
}
