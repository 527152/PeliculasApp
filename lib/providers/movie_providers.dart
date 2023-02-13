import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class MovieProviders extends ChangeNotifier {
  final String _baseUrl = 'api.themoviedb.org';
  final String _apiKey = 'a271261bea7a9dc56d7a01ec1517d55a';
  final String _lenguage = 'es-ES';

  MovieProviders() {
    print('moviesproviders');
    getondisplaymovies();
  }

  getondisplaymovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _lenguage, 'page': '1'});

    final response = await http.get(url);
    final Map<String, dynamic> deocodeData = json.decode(response.body);
    print(deocodeData['dates']);
  }
}
