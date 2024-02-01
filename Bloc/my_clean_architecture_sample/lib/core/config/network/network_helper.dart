import 'package:my_clean_architecture_sample/core/utils/constants/app_constants.dart';
import 'package:dio/dio.dart';

class NetworkHelper {
  Dio dio = Dio();

  NetworkHelper() {
    // BASE OPTIONS
    dio.options = BaseOptions(
      // baseUrl: AppConstants.baseUrl,
      baseUrl: "https://api.sampleapis.com",
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      headers: AppConstants.requestHeaders,
    );

    // INTERCEPTORS
    dio.interceptors.clear();
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (
          RequestOptions requestOptions,
          RequestInterceptorHandler handler,
        ) {
          handler.next(requestOptions);
        },
        onResponse: (
          Response<dynamic> response,
          ResponseInterceptorHandler handler,
        ) {
          handler.next(response);
        },
        onError: (
          DioException error,
          ErrorInterceptorHandler handler,
        ) {
          handler.next(error);
        },
      ),
    );
  }
}
