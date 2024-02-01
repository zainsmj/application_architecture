import 'package:my_clean_architecture_sample/core/utils/errors/failures.dart';
import 'package:my_clean_architecture_sample/modules/movie/domain/entities/movie_entity.dart';
import 'package:dartz/dartz.dart';

abstract class MovieRepository {
  Future<Either<Failure, MovieResponseEntity>> getListOfMovies();
}
