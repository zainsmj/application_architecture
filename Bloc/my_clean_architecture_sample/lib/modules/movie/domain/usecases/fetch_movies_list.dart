import 'package:my_clean_architecture_sample/core/usecases/usecase.dart';
import 'package:my_clean_architecture_sample/core/utils/errors/failures.dart';
import 'package:my_clean_architecture_sample/modules/movie/domain/entities/movie_entity.dart';
import 'package:my_clean_architecture_sample/modules/movie/domain/repositories/movie_repository.dart';
import 'package:dartz/dartz.dart';

class FetchMoviesList implements UseCase<MovieResponseEntity, NoParams> {
  final MovieRepository repository;

  FetchMoviesList(this.repository);

  @override
  Future<Either<Failure, MovieResponseEntity>> call(NoParams params) async {
    return await repository.getListOfMovies();
  }
}
