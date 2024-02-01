import 'dart:async';
import 'package:my_clean_architecture_sample/core/usecases/usecase.dart';
import 'package:my_clean_architecture_sample/modules/movie/domain/entities/movie_entity.dart';
import 'package:my_clean_architecture_sample/modules/movie/domain/usecases/fetch_movies_list.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final FetchMoviesList _fetchMoviesListUC;

  MovieBloc({
    required FetchMoviesList fetchMoviesListUC,
  })  : _fetchMoviesListUC = fetchMoviesListUC,
        super(MovieInitialState()) {
    on<MovieEvent>((event, emit) {});
    on<FetchMoviesEvent>(_fetchMoviesEvent);
  }

  FutureOr<void> _fetchMoviesEvent(
    FetchMoviesEvent event,
    Emitter<MovieState> emit,
  ) async {
    emit(MovieLoadingState());

    final listOfMoviesEither = await _fetchMoviesListUC(NoParams());

    listOfMoviesEither.fold(
      (l) {
        emit(
          MovieErrorState(errorMsg: l.message),
        );
      },
      (r) {
        emit(
          MovieLoadedState(listOfMovies: r.data),
        );
      },
    );
  }
}
