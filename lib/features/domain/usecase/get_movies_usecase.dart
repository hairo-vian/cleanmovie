import 'package:cleanmovie/features/domain/entities/movie_entity.dart';
import 'package:cleanmovie/features/domain/repositories/movie_repository.dart';

class GetMoviesUseCase {
  final MovieRepository repository;

  GetMoviesUseCase({required this.repository});

  Stream<MovieEntity> call(){
    return repository.getMovies();
  }
}