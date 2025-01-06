import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zenify/providers/home_view_filter_provider.dart';
import 'package:zenify/providers/meditation_provider.dart';
import 'package:zenify/providers/mindfulness_provider.dart';
import 'package:zenify/providers/sleep_ex_provider.dart';
import 'package:zenify/routes/app_routers.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MindfulnessProvider()),
        ChangeNotifierProvider(create: (context) => MeditationProvider()),
        ChangeNotifierProvider(create: (context) => SleepExProvider()),
        ChangeNotifierProvider(create: (context) => HomeViewFilterProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Zenify",
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routerConfig: AppRouters().router,
    );
  }
}
