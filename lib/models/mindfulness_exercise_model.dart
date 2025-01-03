class MindfulnessExerciseModel {
  final String category;
  final String name;
  final String description;
  final List<String> instruction;
  final int duration;
  final String instructionUrl;
  final String imageUrl;

  MindfulnessExerciseModel({
    required this.category,
    required this.name,
    required this.description,
    required this.instruction,
    required this.duration,
    required this.instructionUrl,
    required this.imageUrl,
  });

  //* Convert json data to MindfulnessExerciseModel
  factory MindfulnessExerciseModel.fromJson(Map<String, dynamic> json) {
    return MindfulnessExerciseModel(
      category: json["category"],
      name: json["name"],
      description: json["description"],
      instruction: List<String>.from(json["instruction"]),
      duration: json["duration"],
      instructionUrl: json["instruction_url"],
      imageUrl: json["image_url"],
    );
  }

  //* Convert MindfulnessExerciseModel to json data
  Map<String, dynamic> toJson() {
    return {
      "category": category,
      "name": name,
      "description": description,
      "instruction": instruction,
      "duration": duration,
      "instruction_url": instructionUrl,
      "image_url": imageUrl,
    };
  }
}
