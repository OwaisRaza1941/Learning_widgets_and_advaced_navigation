import 'package:go_router/go_router.dart';
import 'package:learning/routes/app_routes.dart';
import 'package:learning/screens/navigator_2.0_paractice/about_screen.dart';
import 'package:learning/screens/navigator_2.0_paractice/home_screen.dart';
import 'package:learning/screens/navigator_2.0_paractice/profile_screen.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: AppRoutes.homeScreen,
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.aboutScreen,
        builder: (context, state) => AboutScreen(),
      ),
      GoRoute(
        path: AppRoutes.profileScreen,
        builder: (context, state) => ProfileScreen(),
      ),
    ],
  );
}
