import 'package:go_router/go_router.dart';
import 'package:zenify/routes/app_route_names.dart';
import 'package:zenify/screens/1_main_navigation_screen/main_navigation_screen.dart';

class AppRouters {
  final router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        name: AppRouteNames.navBarScreen,
        path: "/",
        builder: (context, state) {
          return MainNavigationScreen();
        },
      ),
    ],
  );
}
