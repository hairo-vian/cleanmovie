import 'package:cleanmovie/base_locator.dart';
import 'package:cleanmovie/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/home/presentation/cubit/movie/movie_cubit.dart';
import 'features/home/di/home_injection.dart' as di;
import 'features/home/presentation/pages/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di.sl<MovieCubit>()..getMovies(),
      child: const MaterialApp(
        title: 'Movie App',
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routeName,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}