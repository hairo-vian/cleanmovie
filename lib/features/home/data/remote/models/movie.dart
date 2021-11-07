import 'dart:convert';

import 'package:cleanmovie/features/home/domain/entities/movie_entity.dart';

class Movie extends MovieEntity {
  Movie({
    int? page,
    List<Result>? results,
    int? totalPages,
    int? totalResults
  }) : super(
      page: page,
      results: results,
      totalPages: totalPages,
      totalResults: totalResults
  );
}

class Result extends ResultEntity {
  Result({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    DateTime? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount
  }) : super(
    adult: adult,
    backdropPath: backdropPath,
    genreIds: genreIds,
    id: id,
    originalLanguage: originalLanguage,
    originalTitle: originalTitle,
    overview: overview,
    popularity: popularity,
    posterPath: posterPath,
    releaseDate: releaseDate,
    title: title,
    video: video,
    voteAverage: voteAverage,
    voteCount: voteCount
  );
}
