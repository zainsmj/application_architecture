part of 'movie_bloc.dart';

sealed class MovieState extends Equatable {
  const MovieState();

  @override
  List<Object> get props => [];
}

final class MovieInitialState extends MovieState {}

final class MovieLoadingState extends MovieState {}

final class MovieLoadedState extends MovieState {
  final List<MovieEntity> listOfMovies;

  const MovieLoadedState({
    required this.listOfMovies,
  }) : super();
}

final class MovieErrorState extends MovieState {
  final String errorMsg;

  const MovieErrorState({
    required this.errorMsg,
  }) : super();
}
