import 'dart:io';

import 'package:cleanmovie/features/domain/usecase/get_movies_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  final GetMoviesUseCase getMoviesUseCase;

  MovieCubit({required this.getMoviesUseCase}) : super(MovieInitial());

  Future<void> getMovies() async {
    emit(MovieLoading());
    try {
      getMoviesUseCase.call().listen((movies) {
        emit(MovieLoaded(movies: movies));
      });
    } on SocketException catch(_){
      emit(MovieFailure());
    }catch(_){
      emit(MovieFailure());
    }
  }
}
