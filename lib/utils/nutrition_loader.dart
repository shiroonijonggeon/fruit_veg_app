import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/nutrition_info.dart';

class NutritionLoader {
  static Future<List<NutritionInfo>> loadNutritionData() async {
    final String jsonString = await rootBundle.loadString('assets/nutrition_data.json');
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList.map((json) => NutritionInfo.fromJson(json)).toList();
  }

  static Future<NutritionInfo?> getInfoByLabel(String label) async {
    final data = await loadNutritionData();
    return data.firstWhere(
      (item) => item.label.toLowerCase() == label.toLowerCase(),
      orElse: () => NutritionInfo(
        label: label,
        indo: "-",
        vitamins: [],
        nutrients: [],
      ),
    );
  }
}
