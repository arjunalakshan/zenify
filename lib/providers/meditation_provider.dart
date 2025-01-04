import 'package:flutter/material.dart';
import 'package:zenify/models/meditation_exercise_model.dart';

class MeditationProvider extends ChangeNotifier {
  List<MeditationExerciseModel> _allMeditationList = [];
  List<MeditationExerciseModel> meditationList = [];

  MeditationProvider() {
    _allMeditationList = [
      MeditationExerciseModel(
        category: "Inner Peace",
        name: "Ocean Waves Meditation",
        description:
            "Listen to the soothing sound of gentle ocean waves and focus on inner peace. Allow the rhythmic crashing of waves to guide your breath and wash away tension, creating a deep sense of tranquility and grounding.",
        duration: 12,
        audioUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3",
        videoUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/1MB.mp4",
      ),
      MeditationExerciseModel(
        category: "Concentration",
        name: "Candle Gazing",
        description:
            "Fix your gaze on a candle flame to quiet the mind and improve concentration. The steady flame becomes your focal point, helping to sharpen mental clarity and reduce distractions for improved focus.",
        duration: 10,
        audioUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3",
        videoUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/1MB.mp4",
      ),
      MeditationExerciseModel(
        category: "Anxiety Relief",
        name: "Counting Breath Meditation",
        description:
            "Count each inhale and exhale to calm the mind and reduce anxiety. This technique encourages steady breathing, lowers stress levels, and helps bring your awareness into the present moment.",
        duration: 9,
        audioUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3",
        videoUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/1MB.mp4",
      ),
      MeditationExerciseModel(
        category: "Healing",
        name: "Chakra Balancing",
        description:
            "Focus on aligning and balancing your chakras to restore energy flow. Visualize each energy center glowing brightly as you cultivate harmony, revitalization, and emotional well-being.",
        duration: 18,
        audioUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3",
        videoUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/1MB.mp4",
      ),
      MeditationExerciseModel(
        category: "Self-Discovery",
        name: "Reflective Journaling Meditation",
        description:
            "Meditate and reflect on your thoughts before journaling for deeper self-awareness. This practice helps you explore your emotions, identify patterns, and uncover insights about your inner self.",
        duration: 15,
        audioUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3",
        videoUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/1MB.mp4",
      ),
      MeditationExerciseModel(
        category: "Mindfulness",
        name: "Walking Meditation",
        description:
            "Practice mindfulness by focusing on the sensations of walking and your surroundings. Pay attention to the rhythm of your steps, the feeling of the ground beneath your feet, and the sounds around you to bring yourself fully into the present moment.",
        duration: 12,
        audioUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3",
        videoUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/1MB.mp4",
      ),
      MeditationExerciseModel(
        category: "Stress Relief",
        name: "Mountain Visualization",
        description:
            "Imagine yourself as a mountain, steady and unshaken by external events. Envision storms passing over you without altering your strong and grounded presence, helping you feel more resilient in the face of stress.",
        duration: 14,
        audioUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3",
        videoUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/1MB.mp4",
      ),
      MeditationExerciseModel(
        category: "Gratitude",
        name: "Appreciation Pause",
        description:
            "Pause to reflect on three things you appreciate in your life today. By focusing on positive moments, people, or experiences, this practice cultivates gratitude and helps shift your mindset towards optimism and contentment.",
        duration: 8,
        audioUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3",
        videoUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/1MB.mp4",
      ),
      MeditationExerciseModel(
        category: "Energy",
        name: "Breath of Fire",
        description:
            "A rapid breathing technique to boost energy and awaken your senses. This powerful practice clears mental fog, improves focus, and stimulates vitality. Perfect for mornings or whenever you need an energy lift.",
        duration: 6,
        audioUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3",
        videoUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/1MB.mp4",
      ),
      MeditationExerciseModel(
        category: "Emotional Balance",
        name: "Rainfall Relaxation",
        description:
            "Listen to the soothing sound of rain to center your emotions and promote calmness. Visualize each raindrop washing away stress and leaving you with a sense of peace and emotional clarity.",
        duration: 10,
        audioUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/500-KB-MP3.mp3",
        videoUrl:
            "https://onlinetestcase.com/wp-content/uploads/2023/06/1MB.mp4",
      ),
    ];
    meditationList = List.from(_allMeditationList);
  }
}
