import 'package:cleanmovie/base_locator.dart';
import 'package:cleanmovie/features/data/remote/datasource/api/api_remote_data_source.dart';
import 'package:cleanmovie/features/data/remote/datasource/api/api_remote_data_source_impl.dart';
import 'package:cleanmovie/features/data/remote/repositories/movie_repository_impl.dart';
import 'package:cleanmovie/features/domain/repositories/movie_repository.dart';
import 'package:cleanmovie/features/domain/usecase/get_movies_usecase.dart';
import 'package:cleanmovie/features/presentation/cubit/movie/movie_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

Future<void> init() async {
  //Bloc
  sl.registerFactory<MovieCubit>(() => MovieCubit(
    getMoviesUseCase: sl.call()
  ));

  //Use Case
  sl.registerLazySingleton<GetMoviesUseCase>(
          () => GetMoviesUseCase(repository: sl.call()));

  //Repository
  sl.registerLazySingleton<MovieRepository>(
          () => MovieRepositoryImpl(remoteDataSource: sl.call()));

  //Data Source
  sl.registerLazySingleton<ApiRemoteDataSource>(
          () => ApiRemoteDataSourceImpl(dio: gDio));

  //External
  final dio = Dio();

  sl.registerLazySingleton(() => dio);
}

