import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:zenify/models/meditation_exercise_model.dart';
import 'package:zenify/models/mindfulness_exercise_model.dart';
import 'package:zenify/providers/home_view_filter_provider.dart';
import 'package:zenify/utils/app_colors.dart';
import 'package:zenify/utils/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 50,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Image.asset(
            "lib/assets/icons/enso.png",
            fit: BoxFit.contain,
          ),
        ),
        title: Text("ZENIFY"),
        titleTextStyle:
            AppTextStyles.titleStyle.copyWith(color: AppColors.kPrimaryColor),
      ),
      body: SafeArea(
        /// A widget that builds a UI based on the state of a future that fetches exercise data.
        ///
        /// This widget uses a `FutureBuilder` to fetch exercise data from the `HomeViewFilterProvider`.
        /// Depending on the state of the future, it displays a loading indicator, an error message,
        /// or the fetched data. When the data is successfully fetched, it displays a list of filter
        /// chips and a staggered grid of exercises.
        ///
        /// The filter chips allow the user to filter the exercises by category, such as "All",
        /// "Mindfulness", "Meditation", and "Sleep Stories".
        ///
        /// The `Consumer` widget is used to listen to changes in the `HomeViewFilterProvider` and
        /// rebuild the UI accordingly.
        ///
        /// The `StaggeredGrid` widget is used to display the exercises in a grid layout.
        child: FutureBuilder(
          future: Provider.of<HomeViewFilterProvider>(context, listen: false)
              .getAllExerciseData(context),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              log(snapshot.error.toString());
              return Center(
                child: Text(
                  "Error in data loading!",
                  style: AppTextStyles.subtitleStyle.copyWith(
                    color: Colors.redAccent,
                  ),
                ),
              );
            } else {
              return Consumer<HomeViewFilterProvider>(
                builder: (context, filterProvider, Widget? child) {
                  final consumeExerciseList = filterProvider.filteredExData;
                  return Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select category to start exploring",
                          style: AppTextStyles.subtitleStyle.copyWith(
                            color: AppColors.kBlckColor,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.kPrimaryShadeColor.withAlpha(80),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 6,
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                spacing: 8,
                                children: [
                                  //* 'All' filter chip
                                  FilterChip(
                                    onSelected: (value) {
                                      filterProvider.onFilterExerciseData(
                                        categoryArg: "All",
                                      );
                                    },
                                    label: Text("All"),
                                    labelStyle:
                                        AppTextStyles.bodyStyle.copyWith(
                                      color: filterProvider.onSelectFilter() ==
                                              "All"
                                          ? AppColors.kWhiteColor
                                          : AppColors.kBlckColor,
                                    ),
                                    backgroundColor: AppColors.kWhiteColor,
                                    selected: filterProvider.onSelectFilter() ==
                                        "All",
                                    showCheckmark: false,
                                    selectedColor: AppColors.kPrimaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                        color: AppColors.kPrimaryColor,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  //* 'Mindfulness' filter chip
                                  FilterChip(
                                    onSelected: (value) {
                                      filterProvider.onFilterExerciseData(
                                        categoryArg: "Mindfulness",
                                      );
                                    },
                                    label: Text("Mindfulness"),
                                    labelStyle:
                                        AppTextStyles.bodyStyle.copyWith(
                                      color: filterProvider.onSelectFilter() ==
                                              "Mindfulness"
                                          ? AppColors.kWhiteColor
                                          : AppColors.kBlckColor,
                                    ),
                                    backgroundColor: AppColors.kWhiteColor,
                                    selected: filterProvider.onSelectFilter() ==
                                        "Mindfulness",
                                    showCheckmark: false,
                                    selectedColor: AppColors.kPrimaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                        color: AppColors.kPrimaryColor,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  //* 'Meditation' filter chip
                                  FilterChip(
                                    onSelected: (value) {
                                      filterProvider.onFilterExerciseData(
                                        categoryArg: "Meditation",
                                      );
                                    },
                                    label: Text("Meditation"),
                                    labelStyle:
                                        AppTextStyles.bodyStyle.copyWith(
                                      color: filterProvider.onSelectFilter() ==
                                              "Meditation"
                                          ? AppColors.kWhiteColor
                                          : AppColors.kBlckColor,
                                    ),
                                    backgroundColor: AppColors.kWhiteColor,
                                    selected: filterProvider.onSelectFilter() ==
                                        "Meditation",
                                    showCheckmark: false,
                                    selectedColor: AppColors.kPrimaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                        color: AppColors.kPrimaryColor,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  //* 'Sleep Stories' filter chip
                                  FilterChip(
                                    onSelected: (value) {
                                      filterProvider.onFilterExerciseData(
                                        categoryArg: "Sleep Stories",
                                      );
                                    },
                                    label: Text("Sleep Stories"),
                                    labelStyle:
                                        AppTextStyles.bodyStyle.copyWith(
                                      color: filterProvider.onSelectFilter() ==
                                              "Sleep Stories"
                                          ? AppColors.kWhiteColor
                                          : AppColors.kBlckColor,
                                    ),
                                    backgroundColor: AppColors.kWhiteColor,
                                    selected: filterProvider.onSelectFilter() ==
                                        "Sleep Stories",
                                    showCheckmark: false,
                                    selectedColor: AppColors.kPrimaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                        color: AppColors.kPrimaryColor,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        if (consumeExerciseList.isNotEmpty)
                          Expanded(
                            child: SingleChildScrollView(
                              child: StaggeredGrid.count(
                                crossAxisCount: 2,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                                axisDirection: AxisDirection.down,
                                children: consumeExerciseList.map((element) {
                                  log((element.description.length / 2)
                                      .toInt()
                                      .toString());
                                  return GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: element
                                                is MindfulnessExerciseModel
                                            ? AppColors.kPrimaryShadeColor
                                            : element is MeditationExerciseModel
                                                ? AppColors.kSecondaryColor
                                                : AppColors.kSupportColor,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            element.name,
                                            style: AppTextStyles.subtitleStyle
                                                .copyWith(
                                              color: AppColors.kWhiteColor,
                                            ),
                                          ),
                                          Text(
                                            element.category,
                                            style: AppTextStyles.bodyStyle
                                                .copyWith(
                                              color: AppColors.kBlckColor
                                                  .withAlpha(150),
                                            ),
                                          ),
                                          Text(
                                            "${element.duration} min",
                                            style: AppTextStyles.bodyStyle
                                                .copyWith(
                                              color: AppColors.kBlckColor
                                                  .withAlpha(150),
                                            ),
                                          ),
                                          Text(
                                            element.description,
                                            style: AppTextStyles.bodyStyle
                                                .copyWith(
                                              color: AppColors.kWhiteColor,
                                            ),
                                            maxLines: 8,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
