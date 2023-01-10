
import 'package:dio/dio.dart';
import 'package:flutter_application_15/models/News.dart';


class NewsApi {
  String _apikey = '80dcc000443a47fcad20a57d90b97e8d';

  String _url =
      "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=80dcc000443a47fcad20a57d90b97e8d";

  late Dio _dio;
  NewsApi({required Article article}) {
    _dio = Dio();
  }
  Future<List<Article?>?> fetchNewsArticle() async {
    try {
      Response response = await _dio.get(_url);
      print(response);
      News news = News.fromJson(response.data);
      return news.articles;
    } on DioError catch (e) {
      print(e);
      return null!;
    }
  }
}
