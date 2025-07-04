class NutritionInfo {
  final String label;
  final String indo;
  final List<String> vitamins;
  final List<String> nutrients;

  NutritionInfo({
    required this.label,
    required this.indo,
    required this.vitamins,
    required this.nutrients,
  });

  factory NutritionInfo.fromJson(Map<String, dynamic> json) {
    return NutritionInfo(
      label: json['label'],
      indo: json['indo'],
      vitamins: List<String>.from(json['vitamins']),
      nutrients: List<String>.from(json['nutrients']),
    );
  }
}
