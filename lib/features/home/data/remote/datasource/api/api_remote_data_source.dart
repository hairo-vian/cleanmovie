import 'package:cleanmovie/features/home/domain/entities/movie_entity.dart';

abstract class ApiRemoteDataSource {
  Stream<MovieEntity> getMovies();
}