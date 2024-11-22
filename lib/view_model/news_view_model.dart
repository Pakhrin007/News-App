import 'package:news/models/newschannelheadlinesmodel.dart';
import 'package:news/respoitory/news_repository.dart';

class NewsViewModel {
  final _rep = NewsRepository();

  Future<newschannelheadlinesmodel> fetchnewschannelheadlinesapi() async {
    final response = await _rep.fetchnewschannelheadlinesapi();
    return response;
  }
}
