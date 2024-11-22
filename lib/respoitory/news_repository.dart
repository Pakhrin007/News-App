import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/models/newschannelheadlinesmodel.dart';

class NewsRepository {
  Future<newschannelheadlinesmodel> fetchnewschannelheadlinesapi() async {
    String url =
        "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=be9a7bed1cc345a682c6cf105e760f8d";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return newschannelheadlinesmodel.fromJson(body);
    }
    throw Exception('error');
  }
}
