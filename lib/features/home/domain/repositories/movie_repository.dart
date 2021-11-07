import 'package:cleanmovie/features/home/domain/entities/movie_entity.dart';

abstract class MovieRepository {
  Stream<MovieEntity> getMovies();
}