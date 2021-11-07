import 'package:cleanmovie/features/domain/entities/movie_entity.dart';

abstract class MovieRepository {
  Stream<MovieEntity> getMovies();
}