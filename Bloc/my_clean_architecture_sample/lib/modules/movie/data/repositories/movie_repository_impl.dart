import 'package:my_clean_architecture_sample/core/config/network/api_exceptions.dart';
import 'package:my_clean_architecture_sample/core/utils/errors/failures.dart';
import 'package:my_clean_architecture_sample/modules/movie/data/datasources/movie_remote_data_source.dart';
import 'package:my_clean_architecture_sample/modules/movie/domain/entities/movie_entity.dart';
import 'package:my_clean_architecture_sample/modules/movie/domain/repositories/movie_repository.dart';
import 'package:dartz/dartz.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource _remoteDataSource;

  MovieRepositoryImpl({
    required MovieRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure, MovieResponseEntity>> getListOfMovies() async {
    // if (await _networkInfo.isConnected) {
    try {
      final listOfMovies = await _remoteDataSource.getListOfMoviesFromApi();
      return Right(listOfMovies);
    } catch (e) {
      return Left(ApiExceptions.handleError(e).failure);
    }
    // } else {
    //   return Left(ApiResponse.NO_INTERNET_CONNECTION.getFailure());
    // }
  }

  // try {
  // final listOfProducts = await _remoteDataSource.getListOfMoviesFromApi();
  // return Right(listOfProducts);
  // } on ServerException catch (exp) {
  //   print(exp.message);
  //   return Left(ServerFailure(exp.message));
  // } catch (e) {
  //   print(e);
  //   return Left(ServerFailure(e.toString()));
  // }
  // }
}
