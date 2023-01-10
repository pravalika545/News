import 'dart:convert';

import 'package:flutter_application_15/models/News.dart';

import 'package:http/http.dart';

class NewsApi {
  String endPointurl =
      "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=80dcc000443a47fcad20a57d90b97e8d";

  // final client = http.Client();

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri());
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get the Article");
    }

    // final queryParameters = {
    //   'country ': 'us',
    //   'category': 'technology',
    //   'apikey': '80dcc000443a47fcad20a57d90b97e8d',
    // };

    // final uri = Uri.https(
    //     endPoint,
    //     'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=80dcc000443a47fcad20a57d90b97e8d',
    //     queryParameters);
    // final response = await client.get(uri);
    // Map<String, dynamic> json = jsonDecode(response.body);
    // List<dynamic> body = json['article'];
    // List<Article> articles =
    //     body.map((dynamic item) => Article.fromJson(item)).toList();
    // return articles;
  }
}







/*import 'package:dio/dio.dart';
import 'package:flutter_application_30/models/News.dart';

class NewsApi {
  String _apikey = '80dcc000443a47fcad20a57d90b97e8d';

  String _url =
      "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=80dcc000443a47fcad20a57d90b97e8d";

  late Dio _dio;
  NewsApi({required Article article}) {
    _dio = Dio();
  }
  Future<List<Article>>? fetchNewsArticle() async {
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
}*/
