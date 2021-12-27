import 'package:dio/dio.dart';

const kBaseUrl = 'https://api.themoviedb.org/3';
const kApiKey = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0YTY0MWQyYWJmNzZkOThhODk3ODA2MGI2YmM4ZmQ2NiIsInN1YiI6IjYxYzIwYTQwM2ZlNzk3MDA2MTExNWU0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.V0ML672sl_zkTmUc3yBaLMSu3BFfQUR0KPDjQ2v-m2s';
const kServerError = 'Failed to connect to the server. Try again later.';
final kDioOptions = BaseOptions(
  baseUrl: kBaseUrl,
  connectTimeout: 5000,
  receiveTimeout: 3000,
  contentType: 'application/json;charset=utf-8',
  headers: {'Authorization': 'Bearer $kApiKey'},
);