import 'package:flutter/material.dart';
import 'package:zenify/models/mindfulness_exercise_model.dart';

class MindfulnessProvider extends ChangeNotifier {
  List<MindfulnessExerciseModel> _allMindfulnessExList = [];
  List<MindfulnessExerciseModel> mindfulnessExList = [];

  MindfulnessProvider() {
    _allMindfulnessExList = [
      MindfulnessExerciseModel(
        category: "Breathing Exercise",
        name: "Deep Breathing for Relaxation",
        description:
            "This exercise is designed to help you achieve a sense of calm and relaxation by focusing on your breath. By consciously slowing down your breathing and maintaining a steady rhythm, you can ease tension in your body, clear your mind, and lower stress levels. The practice encourages mindfulness by bringing your attention to the present moment, helping you disconnect from distractions and worries.",
        instruction: [
          "Find a quiet place to sit or lie down comfortably.",
          "Close your eyes and take a deep breath in through your nose for a count of four.",
          "Hold your breath gently for a count of four.",
          "Exhale slowly through your mouth for a count of six.",
          "Repeat this cycle for five minutes, focusing on the sensation of your breath moving in and out.",
          "If your mind wanders, gently bring your focus back to your breathing.",
        ],
        duration: 5,
        instructionUrl: "https://loremipsum.io/",
        imageUrl:
            "https://images.pexels.com/photos/5184327/pexels-photo-5184327.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      ),
      MindfulnessExerciseModel(
        category: "Body Scan",
        name: "Full Body Relaxation Scan",
        description:
            "This exercise guides you through a mindful exploration of your body, helping you release tension and develop a deeper awareness of your physical sensations. It encourages relaxation by focusing your attention on one area of the body at a time, promoting a state of calm and presence.",
        instruction: [
          "Find a comfortable position lying down or sitting in a quiet space.",
          "Close your eyes and take a few deep breaths to settle in.",
          "Start by focusing on the top of your head. Notice any sensations, tension, or relaxation.",
          "Slowly move your attention downward through your face, neck, shoulders, arms, chest, abdomen, legs, and feet.",
          "As you focus on each body part, imagine releasing any tension you may feel.",
          "Once you’ve scanned your entire body, take a moment to observe how you feel."
        ],
        duration: 10,
        instructionUrl: "https://loremipsum.io/",
        imageUrl:
            "https://images.pexels.com/photos/4823532/pexels-photo-4823532.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      ),
      MindfulnessExerciseModel(
        category: "Gratitude",
        name: "Daily Gratitude Reflection",
        description:
            "This simple exercise helps you cultivate a sense of gratitude by focusing on the positive aspects of your day. Reflecting on what you are thankful for can enhance your mood, improve perspective, and strengthen emotional resilience.",
        instruction: [
          "Sit comfortably in a quiet space with a journal or notebook.",
          "Take a few deep breaths to center yourself.",
          "Think about three things you are grateful for today. They can be big or small.",
          "Write each one down, including why it is meaningful to you.",
          "Pause after each reflection to fully feel the gratitude and appreciation.",
          "Close the exercise with a deep breath and a moment of silent thanks."
        ],
        duration: 7,
        instructionUrl: "https://loremipsum.io/",
        imageUrl:
            "https://images.pexels.com/photos/6724383/pexels-photo-6724383.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      ),
      MindfulnessExerciseModel(
        category: "Mindful Eating",
        name: "Savoring a Single Bite",
        description:
            "This mindfulness exercise invites you to slow down and fully experience the act of eating. By paying close attention to the taste, texture, and aroma of your food, you can cultivate a deeper appreciation for your meals and improve your relationship with eating.",
        instruction: [
          "Choose a small piece of food, such as a raisin, a piece of chocolate, or a slice of fruit.",
          "Hold it in your hand and observe its texture, color, and shape.",
          "Bring it to your nose and notice its smell.",
          "Place it in your mouth, but do not chew immediately. Focus on the sensation as it rests on your tongue.",
          "Chew slowly, noticing the flavors and texture as it changes.",
          "Swallow and take a moment to appreciate the experience before taking another bite."
        ],
        duration: 5,
        instructionUrl: "https://loremipsum.io/",
        imageUrl:
            "https://images.pexels.com/photos/8530276/pexels-photo-8530276.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      ),
      MindfulnessExerciseModel(
        category: "Visualization",
        name: "Peaceful Place Visualization",
        description:
            "This exercise uses visualization to help you relax and feel at peace. By imagining yourself in a serene and calming environment, you can reduce stress and bring a sense of comfort and tranquility to your mind.",
        instruction: [
          "Find a quiet and comfortable place to sit or lie down.",
          "Close your eyes and take a few deep breaths to relax.",
          "Imagine a place where you feel completely at peace. It could be a beach, a forest, a garden, or anywhere else.",
          "Picture the details of this place—the sights, sounds, smells, and sensations.",
          "Spend a few minutes fully immersing yourself in this peaceful environment.",
          "When ready, take a deep breath and slowly return to the present moment."
        ],
        duration: 8,
        instructionUrl: "https://loremipsum.io/",
        imageUrl:
            "https://images.pexels.com/photos/8264248/pexels-photo-8264248.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      ),
      MindfulnessExerciseModel(
        category: "Walking Meditation",
        name: "Mindful Walking",
        description:
            "This exercise combines movement with mindfulness, allowing you to connect with your body and surroundings while walking. It is an excellent way to integrate mindfulness into your daily routine and enhance your focus and awareness.",
        instruction: [
          "Find a quiet, safe space to walk, such as a park or hallway.",
          "Stand still for a moment and take a few deep breaths to center yourself.",
          "Begin walking slowly, focusing on the sensation of your feet touching the ground.",
          "Pay attention to the rhythm of your steps, the movement of your legs, and the balance of your body.",
          "If your mind starts to wander, gently bring your focus back to the act of walking.",
          "Continue for the duration, maintaining a slow and steady pace."
        ],
        duration: 10,
        instructionUrl: "https://loremipsum.io/",
        imageUrl:
            "https://images.pexels.com/photos/20528016/pexels-photo-20528016/free-photo-of-silhouette-of-woman-walking-along-seashore-at-dawn.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      ),
    ];
    mindfulnessExList = List.from(_allMindfulnessExList);
  }
}
