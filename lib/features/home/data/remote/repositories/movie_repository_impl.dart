import 'package:cleanmovie/features/home/data/remote/datasource/api/api_remote_data_source.dart';
import 'package:cleanmovie/features/home/domain/entities/movie_entity.dart';
import 'package:cleanmovie/features/home/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl extends MovieRepository {
  final ApiRemoteDataSource remoteDataSource;

  MovieRepositoryImpl({required this.remoteDataSource});

  @override
  Stream<MovieEntity> getMovies() => remoteDataSource.getMovies();
}