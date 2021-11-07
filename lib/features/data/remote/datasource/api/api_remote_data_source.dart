import 'package:cleanmovie/features/domain/entities/movie_entity.dart';

abstract class ApiRemoteDataSource {
  Stream<MovieEntity> getMovies();
}