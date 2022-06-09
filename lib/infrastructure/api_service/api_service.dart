import 'package:dio/dio.dart';

class ApiService {
  Future<List> getCharactersDatas() async {
    final response = await Dio().get(
      "https://rickandmortyapi.com/api/character",
    );
    return response.data["results"];
  }
}
