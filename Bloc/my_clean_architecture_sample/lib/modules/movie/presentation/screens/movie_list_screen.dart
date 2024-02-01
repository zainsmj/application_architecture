import 'package:my_clean_architecture_sample/core/utils/constants/app_constants.dart';
import 'package:my_clean_architecture_sample/core/widgets/others/loader_widget.dart';
import 'package:my_clean_architecture_sample/dependency_injection.dart';
import 'package:my_clean_architecture_sample/modules/movie/domain/entities/movie_entity.dart';
import 'package:my_clean_architecture_sample/modules/movie/presentation/bloc/movie_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieListScreen extends StatelessWidget {
  const MovieListScreen({super.key});

  MovieBloc get movieBloc => sl();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: movieBloc,
      child: const MovieListScreenContent(),
    );
  }
}

class MovieListScreenContent extends StatefulWidget {
  const MovieListScreenContent({super.key});

  @override
  State<MovieListScreenContent> createState() => _MovieListScreenContentState();
}

class _MovieListScreenContentState extends State<MovieListScreenContent> {
  @override
  void initState() {
    context.read<MovieBloc>().add(FetchMoviesEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies List"),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          // LOADING
          if (state is MovieLoadingState) {
            return LoaderWidget.showScreenLoader();
          }

          // LOADED
          else if (state is MovieLoadedState) {
            return ListView.builder(
              itemCount: state.listOfMovies.length,
              itemBuilder: (BuildContext context, int index) {
                return _renderSingleRecord(state.listOfMovies[index]);
              },
            );
          }

          // ERROR
          else if (state is MovieErrorState) {
            return Container();
          }

          // DEFAULT
          else {
            return Container();
          }
        },
      ),
    );
  }

  ListTile _renderSingleRecord(MovieEntity movie) {
    return ListTile(
      leading: Image.network(
        movie.posterUrl,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return LoaderWidget.showWidgetLoader();
        },
        errorBuilder: (context, error, stackTrace) {
          return Image.asset(
            "${AppConstants.assetImages}movie-poster-placeholder.png",
          );
        },
      ),
      title: Text(movie.title),
      subtitle: Text(movie.imdbId),
    );
  }
}
