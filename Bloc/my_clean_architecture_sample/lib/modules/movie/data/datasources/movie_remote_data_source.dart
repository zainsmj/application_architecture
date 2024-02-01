import 'package:my_clean_architecture_sample/core/config/network/api_exceptions.dart';
import 'package:my_clean_architecture_sample/core/config/network/endpoints.dart';
import 'package:my_clean_architecture_sample/core/config/network/network_helper.dart';
import 'package:my_clean_architecture_sample/core/utils/constants/app_constants.dart';
import 'package:my_clean_architecture_sample/modules/movie/data/models/movie_model.dart';

abstract class MovieRemoteDataSource {
  Future<MovieResponseModel> getListOfMoviesFromApi();
}

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  final NetworkHelper _networkHelper;

  MovieRemoteDataSourceImpl({required NetworkHelper networkHelper}) : _networkHelper = networkHelper;

  @override
  Future<MovieResponseModel> getListOfMoviesFromApi() async {
    try {
      final response = await _networkHelper.dio.get(
        EndPoints.fetchMovieList,
      );

      if ((response.statusCode == AppConstants.successCode) && (response.statusMessage == AppConstants.successMsg)) {
        // THIS IS TESTING - PREPARE API RESPONSE
        List<MovieModel> dataList = List<MovieModel>.from(
          response.data.map((x) => MovieModel.fromJson(x)),
        );

        // Map<String, dynamic> testingData = {
        //   "code": 200,
        //   "message": "SUCCESS",
        //   "data": response.data,
        //   // "data": dataList,
        // };

        // return MovieResponseModel.fromJson(testingData);
        return MovieResponseModel(
          code: 200,
          message: "SUCCESS",
          data: dataList,
        );
      } else {
        // throw ApiExceptions.handleError(response.data["message"]);
        throw ApiExceptions.handleError("Error while mapping.");
      }
    } catch (e) {
      throw ApiExceptions.handleError(e);
    }
  }
}
