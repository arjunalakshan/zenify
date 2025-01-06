import 'package:flutter/material.dart';
import 'package:zenify/models/sleep_exercise_model.dart';

class SleepExProvider extends ChangeNotifier {
  List<SleepExerciseModel> _allSleepExList = [];
  List<SleepExerciseModel> sleepExList = [];

  SleepExProvider() {
    _allSleepExList = [
      SleepExerciseModel(
        category: "Sleep & Relaxation",
        name: "Deep Breathing for Sleep",
        description:
            "This guided exercise helps you achieve a state of calm by focusing on slow, deep breaths. As you inhale and exhale deeply, you'll progressively relax your muscles, lower your heart rate, and activate your body's natural relaxation response. The exercise is designed to ease tension, quiet your mind, and promote a deep sense of tranquility, helping you prepare for a restful night's sleep.",
        duration: 10,
        audioUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3",
      ),
      SleepExerciseModel(
        category: "Relaxation Techniques",
        name: "Progressive Muscle Relaxation",
        description:
            "Progressive Muscle Relaxation (PMR) involves tensing and relaxing different muscle groups to help release built-up tension. As you work through each muscle group, you'll focus on feeling the contrast between tension and relaxation, which encourages the body to let go of stress and prepare for sleep. This practice enhances your awareness of body sensations and promotes a sense of calmness.",
        duration: 15,
        audioUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3",
      ),
      SleepExerciseModel(
        category: "Visualization Techniques",
        name: "Guided Visualization for Sleep",
        description:
            "This guided visualization takes you on a peaceful journey to a serene, calming place. With soothing imagery and calming prompts, you'll let go of the stresses of the day and focus on imagining yourself in a tranquil environment, such as a beach, forest, or quiet meadow. This exercise is designed to quiet the mind and ease the transition into sleep.",
        duration: 15,
        audioUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3",
      ),
      SleepExerciseModel(
        category: "Breathing Techniques",
        name: "Mindful Breathing",
        description:
            "Mindful Breathing involves focusing on your breath as it enters and leaves your body, cultivating awareness of the present moment. By paying attention to your inhales and exhales without judgment, you'll slow down your breathing and help your mind become more present and less overwhelmed by racing thoughts, which can promote a deeper state of relaxation.",
        duration: 10,
        audioUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3",
      ),
      SleepExerciseModel(
        category: "Meditation Practices",
        name: "Body Scan Meditation",
        description:
            "Body Scan Meditation guides you through a mental check-up of your body, from head to toe. This practice encourages deep relaxation by directing your attention to different areas of your body, helping to identify and release physical tension. The body scan helps calm the nervous system and prepares your body for restful sleep.",
        duration: 20,
        audioUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3",
      ),
      SleepExerciseModel(
        category: "Focus & Attention",
        name: "Breath Counting for Sleep",
        description:
            "Breath Counting is a simple technique where you count each breath cycle to maintain focus and calm the mind. By counting each inhale and exhale up to ten, and then starting over, you interrupt any racing thoughts that might prevent sleep. This exercise encourages a slower breathing pattern and a quiet, calm mind that is primed for a peaceful night of sleep.",
        duration: 10,
        audioUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3",
      ),
    ];
    sleepExList = List.from(_allSleepExList);
  }
}
