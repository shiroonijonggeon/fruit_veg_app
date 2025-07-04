import 'dart:io';
import 'package:tflite_v2/tflite_v2.dart';

class Classifier {
  Future<void> loadModel() async {
    await Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
    );
  }

  Future<String> classifyImage(File image) async {
    var recognitions = await Tflite.runModelOnImage(
      path: image.path,
      imageMean: 0.0,
      imageStd: 255.0,
      numResults: 1,
      threshold: 0.5,
    );

    if (recognitions != null && recognitions.isNotEmpty) {
      return recognitions.first['label'];
    } else {
      return "Tidak dikenali";
    }
  }
}
