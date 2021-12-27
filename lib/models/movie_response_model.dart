import 'dart:convert';
import 'movie_model.dart';

class MovieResponseModel {

  late int page;
  late final int totalResults;
  late final int totalPages;
  late final List<MovieModel> movies;

  MovieResponseModel ({
    required this.page,
    required this.totalResults,
    required this.totalPages,
    required this.movies
  });

  factory MovieResponseModel.fromJson(String str) =>
    MovieResponseModel.fromMap(json.decode(str));

  factory MovieResponseModel.fromMap(Map<String, dynamic> json) =>
    MovieResponseModel(
      page: json["page"],
      totalResults: json["total_results"],
      totalPages: json["total_pages"],
      movies: List<MovieModel>.from(
        json["results"].map((x) => MovieModel.fromMap(x))
      ),
    );
}