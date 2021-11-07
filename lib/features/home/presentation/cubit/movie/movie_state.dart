import 'package:cleanmovie/features/home/domain/entities/movie_entity.dart';
import 'package:equatable/equatable.dart';

abstract class MovieState extends Equatable {
  const MovieState();
}

class MovieInitial extends MovieState {
  @override
  List<Object> get props => [];
}

class MovieLoading extends MovieState {
  @override
  List<Object> get props => [];
}

class MovieFailure extends MovieState {
  @override
  List<Object> get props => [];
}

class MovieLoaded extends MovieState {
  final MovieEntity movies;

  MovieLoaded({required this.movies});

  @override
  List<Object> get props => [movies];
}