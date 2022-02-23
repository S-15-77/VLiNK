import 'package:http/http.dart' as http;
import 'question_model.dart';
import 'dart:convert';

class DBConnect {
  final url = Uri.parse(
      "https://vlinkmvp-default-rtdb.asia-southeast1.firebasedatabase.app/questions.json");

  Future<List<Questions>> fetchQuestions() async {
    return http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Questions> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Questions(
          id: key,
          mainTitle: value['mainTitle'],
          title: value['title'],
          options: Map.castFrom(value['options']),
        );
        newQuestions.add(newQuestion);
      });
      print(newQuestions.length);
      return newQuestions;
    });
  }

  fetchQuestionsList() async {
    return http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Questions> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Questions(
          id: key,
          mainTitle: value['mainTitle'],
          title: value['title'],
          options: Map.castFrom(value['options']),
        );
        newQuestions.add(newQuestion);
      });

      return newQuestions.length;
    });
  }
}
