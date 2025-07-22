import 'package:go_router/go_router.dart';
import 'package:learning/screens/deep_linking_advanced.dart/error_page.dart';
import 'package:learning/screens/deep_linking_advanced.dart/home_page.dart';
import 'package:learning/screens/deep_linking_advanced.dart/product_page.dart';
import 'package:learning/screens/deep_linking_advanced.dart/profile_page.dart';

class AppRouter {
  // simple go router use google recomandation for Naviagtor 2.0

  // static GoRouter router = GoRouter(
  //   initialLocation: "/",
  //   routes: [
  //     GoRoute(
  //       path: AppRoutes.homeScreen,
  //       builder: (context, state) => HomeScreen(),
  //     ),
  //     GoRoute(
  //       path: AppRoutes.aboutScreen,
  //       builder: (context, state) => AboutScreen(),
  //     ),
  //     GoRoute(
  //       path: AppRoutes.profileScreen,
  //       builder: (context, state) => ProfileScreen(),
  //     ),
  //   ],
  // );

  static GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/profile/:username',
        name: 'profile',
        builder: (context, state) {
          final username = state.pathParameters['username']!;
          return ProfilePage(username: username);
        },
      ),
     GoRoute(
      path: '/product/:id',
      builder: (context, state) {
        final productId = state.pathParameters['id']!;
        return ProductPage(productId: productId);
      },
    ),
    ],
    errorBuilder: (context, state) => const ErrorPage(),
  );
}
