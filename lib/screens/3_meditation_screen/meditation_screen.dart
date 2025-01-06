import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:zenify/models/mindfulness_exercise_model.dart';
import 'package:zenify/providers/mindfulness_provider.dart';
import 'package:zenify/routes/app_route_names.dart';
import 'package:zenify/utils/app_colors.dart';
import 'package:zenify/utils/app_text_styles.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meditation Exercises"),
        titleTextStyle:
            AppTextStyles.titleStyle.copyWith(color: AppColors.kPrimaryColor),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  Provider.of<MindfulnessProvider>(context, listen: false)
                      .onSearchExercise(value);
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded),
                  prefixIconColor: AppColors.kGrayColor,
                  hintText: "Search",
                  hintStyle: AppTextStyles.bodyStyle
                      .copyWith(color: AppColors.kGrayColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(
                      color: AppColors.kPrimaryColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(
                      color: AppColors.kPrimaryColor,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Consumer<MindfulnessProvider>(
                builder: (context, mindfulnessProvider, child) {
                  if (mindfulnessProvider.allMindfulnessExerciseList.isEmpty) {
                    return Center(
                      child: Text(
                        "No exercise data available",
                        style: AppTextStyles.bodyStyle
                            .copyWith(color: AppColors.kGrayColor),
                      ),
                    );
                  } else {
                    return Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: mindfulnessProvider
                            .allMindfulnessExerciseList.length,
                        itemBuilder: (context, index) {
                          MindfulnessExerciseModel mindfulnessExerciseModel =
                              mindfulnessProvider
                                  .allMindfulnessExerciseList[index];
                          return GestureDetector(
                            onTap: () {
                              GoRouter.of(context).pushNamed(
                                AppRouteNames.mindfulnessExerciseDetails,
                                queryParameters: {
                                  "mindfulnessExercise": jsonEncode(
                                      mindfulnessExerciseModel.toJson())
                                },
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 16),
                              decoration: BoxDecoration(
                                color:
                                    AppColors.kPrimaryShadeColor.withAlpha(80),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: ListTile(
                                contentPadding: EdgeInsets.all(8),
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    mindfulnessExerciseModel.imageUrl,
                                  ),
                                  radius:
                                      MediaQuery.sizeOf(context).width * 0.09,
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    mindfulnessExerciseModel.name,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                titleTextStyle: AppTextStyles.subtitleStyle
                                    .copyWith(color: AppColors.kBlckColor),
                                subtitle: Text(
                                  mindfulnessExerciseModel.description,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                subtitleTextStyle:
                                    AppTextStyles.bodyStyle.copyWith(
                                  color: AppColors.kBlckColor.withAlpha(150),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
