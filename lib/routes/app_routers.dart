import 'dart:convert';

import 'package:go_router/go_router.dart';
import 'package:zenify/models/mindfulness_exercise_model.dart';
import 'package:zenify/routes/app_route_names.dart';
import 'package:zenify/screens/1_main_navigation_screen/main_navigation_screen.dart';
import 'package:zenify/screens/3_meditation_screen/mindfulness_exercise_detils_screen.dart';

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
      GoRoute(
        name: AppRouteNames.mindfulnessExerciseDetails,
        path: "/mindfulness-exercise-details",
        builder: (context, state) {
          final exerciseModelJson =
              state.uri.queryParameters["mindfulnessExercise"];
          final exerciseModel =
              MindfulnessExerciseModel.fromJson(jsonDecode(exerciseModelJson!));
          return MindfulnessExerciseDetilsScreen(
            mindfulnessExerciseModel: exerciseModel,
          );
        },
      ),
    ],
  );
}
