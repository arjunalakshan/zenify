import 'package:flutter/material.dart';
import 'package:zenify/utils/app_colors.dart';
import 'package:zenify/utils/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        child: Padding(
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
                  padding: EdgeInsets.all(8),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 8,
                      children: [
                        FilterChip(
                          label: Text("All"),
                          labelStyle: AppTextStyles.bodyStyle
                              .copyWith(color: AppColors.kBlckColor),
                          onSelected: (value) {},
                        ),
                        FilterChip(
                          label: Text(
                            "Mindfulness",
                            style: AppTextStyles.bodyStyle
                                .copyWith(color: AppColors.kBlckColor),
                          ),
                          onSelected: (value) {},
                        ),
                        FilterChip(
                          label: Text(
                            "Meditation",
                            style: AppTextStyles.bodyStyle
                                .copyWith(color: AppColors.kBlckColor),
                          ),
                          onSelected: (value) {},
                        ),
                        FilterChip(
                          label: Text(
                            "Sleep Stories",
                            style: AppTextStyles.bodyStyle
                                .copyWith(color: AppColors.kBlckColor),
                          ),
                          onSelected: (value) {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
