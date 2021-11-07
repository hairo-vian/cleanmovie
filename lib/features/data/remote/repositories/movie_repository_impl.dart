import 'package:cleanmovie/features/data/remote/datasource/api/api_remote_data_source.dart';
import 'package:cleanmovie/features/domain/entities/movie_entity.dart';
import 'package:cleanmovie/features/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl extends MovieRepository {
  final ApiRemoteDataSource remoteDataSource;

  MovieRepositoryImpl({required this.remoteDataSource});

  @override
  Stream<MovieEntity> getMovies() => remoteDataSource.getMovies();
}