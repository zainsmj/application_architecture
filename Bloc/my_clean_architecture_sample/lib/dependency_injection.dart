import 'package:my_clean_architecture_sample/core/config/network/network_helper.dart';
import 'package:my_clean_architecture_sample/modules/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:my_clean_architecture_sample/modules/movie/data/datasources/movie_remote_data_source.dart';
import 'package:my_clean_architecture_sample/modules/movie/data/repositories/movie_repository_impl.dart';
import 'package:my_clean_architecture_sample/modules/movie/domain/repositories/movie_repository.dart';
import 'package:my_clean_architecture_sample/modules/movie/domain/usecases/fetch_movies_list.dart';
import 'package:my_clean_architecture_sample/modules/movie/presentation/bloc/movie_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:my_clean_architecture_sample/modules/onboarding/presentation/bloc/onboarding_bloc.dart';

final sl = GetIt.instance; // sl = service locator

Future<void> init() async {
  await registerCoreDependencies();
  await registerDataSources();
  await registerRepositories();
  await registerUseCases();
  await registerBlocs();
}

Future<void> registerCoreDependencies() async {
  // final sharedPreferences = await SharedPreferences.getInstance();
  // sl.registerLazySingleton(() => sharedPreferences);

  sl.registerLazySingleton<NetworkHelper>(
    NetworkHelper.new,
  );

  // sl.registerLazySingleton<FlutterSecureStorage>(
  //   () => const FlutterSecureStorage(),
  // );
}

// DATA SOURCES
Future<void> registerDataSources() async {
  sl.registerLazySingleton<MovieRemoteDataSource>(
    () => MovieRemoteDataSourceImpl(networkHelper: sl()),
  );
}

// REPOSITORIES
Future<void> registerRepositories() async {
  sl.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(remoteDataSource: sl()),
  );
}

// USECASES
Future<void> registerUseCases() async {
  sl.registerLazySingleton(() => FetchMoviesList(sl()));
}

// BLOCS
Future<void> registerBlocs() async {
  sl.registerLazySingleton(OnboardingBloc.new);
  sl.registerLazySingleton(AuthenticationBloc.new);
  sl.registerLazySingleton(
    () => MovieBloc(fetchMoviesListUC: sl()),
  );
}
