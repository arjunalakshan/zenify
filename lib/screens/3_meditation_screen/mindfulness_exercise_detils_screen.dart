import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zenify/models/mindfulness_exercise_model.dart';
import 'package:zenify/utils/app_colors.dart';
import 'package:zenify/utils/app_text_styles.dart';

class MindfulnessExerciseDetilsScreen extends StatelessWidget {
  final MindfulnessExerciseModel mindfulnessExerciseModel;
  const MindfulnessExerciseDetilsScreen({
    super.key,
    required this.mindfulnessExerciseModel,
  });

  Future<void> _onLaunchExternalUrl(String url) async {
    final Uri uri = Uri.parse(url);
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    } catch (error) {
      log(error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mindfulness exercise details"),
        titleTextStyle:
            AppTextStyles.titleStyle.copyWith(color: AppColors.kPrimaryColor),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mindfulnessExerciseModel.name,
                  style: AppTextStyles.subtitleStyle
                      .copyWith(color: AppColors.kBlckColor),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  mindfulnessExerciseModel.category,
                  style: AppTextStyles.bodyStyle
                      .copyWith(color: AppColors.kBlckColor),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  mindfulnessExerciseModel.description,
                  style: AppTextStyles.bodyStyle
                      .copyWith(color: AppColors.kBlckColor),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Instructions",
                  style: AppTextStyles.bodyStyle
                      .copyWith(color: AppColors.kBlckColor),
                ),
                SizedBox(
                  height: 8,
                ),
                ...mindfulnessExerciseModel.instruction.map(
                  (element) => Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 16,
                          color: AppColors.kBlckColor,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Text(
                            element,
                            style: AppTextStyles.bodyStyle
                                .copyWith(color: AppColors.kBlckColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.timelapse_rounded,
                      size: 24,
                      color: AppColors.kGrayColor,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "${mindfulnessExerciseModel.duration} minutes",
                      style: AppTextStyles.bodyStyle
                          .copyWith(color: AppColors.kBlckColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () async {
                    await _onLaunchExternalUrl(
                        mindfulnessExerciseModel.instructionUrl);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(AppColors.kPrimaryColor),
                  ),
                  child: Text(
                    "View detailed instructions",
                    style: AppTextStyles.bodyStyle
                        .copyWith(color: AppColors.kWhiteColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
