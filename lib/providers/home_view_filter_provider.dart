import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zenify/models/meditation_exercise_model.dart';
import 'package:zenify/models/mindfulness_exercise_model.dart';
import 'package:zenify/models/sleep_exercise_model.dart';
import 'package:zenify/providers/meditation_provider.dart';
import 'package:zenify/providers/mindfulness_provider.dart';
import 'package:zenify/providers/sleep_ex_provider.dart';

class HomeViewFilterProvider extends ChangeNotifier {
  List<dynamic> _allExerciseData = [];
  List<dynamic> _filteredExerciseData = [];

  //* Get all exercise data from providers
  Future<void> getAllExerciseData(BuildContext context) async {
    //*Wait until build method runs
    await Future.delayed(Duration.zero);

    //* Get mindfulness exercise data
    List<MindfulnessExerciseModel> mindfulnessExerciseList = [];
    if (context.mounted) {
      mindfulnessExerciseList =
          Provider.of<MindfulnessProvider>(context, listen: false)
              .mindfulnessExList;
    }

    //* Get meditation exercise data
    List<MeditationExerciseModel> meditationExerciseList = [];
    if (context.mounted) {
      meditationExerciseList =
          Provider.of<MeditationProvider>(context, listen: false)
              .meditationList;
    }

    //* Get sleep exercise data
    List<SleepExerciseModel> sleepExerciseList = [];
    if (context.mounted) {
      sleepExerciseList =
          Provider.of<SleepExProvider>(context, listen: false).sleepExList;
    }

    _allExerciseData = [
      ...mindfulnessExerciseList,
      ...meditationExerciseList,
      ...sleepExerciseList,
    ];
    _filteredExerciseData = _allExerciseData;
    notifyListeners();
  }
}
