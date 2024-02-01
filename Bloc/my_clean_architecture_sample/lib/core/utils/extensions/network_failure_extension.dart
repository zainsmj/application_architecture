import 'package:my_clean_architecture_sample/core/config/network/api_exceptions.dart';
import 'package:my_clean_architecture_sample/core/utils/constants/app_enums.dart';
import 'package:my_clean_architecture_sample/core/utils/errors/failures.dart';

extension NetworkFailureExtension on ApiResponse {
  Failure getFailure() {
    switch (this) {
      case ApiResponse.SUCCESS:
        return Failure(
          ResponseCode.SUCCESS,
          ResponseMessage.SUCCESS,
        );
      case ApiResponse.NO_CONTENT:
        return Failure(
          ResponseCode.NO_CONTENT,
          ResponseMessage.NO_CONTENT,
        );
      case ApiResponse.BAD_REQUEST:
        return Failure(
          ResponseCode.BAD_REQUEST,
          ResponseMessage.BAD_REQUEST,
        );
      case ApiResponse.FORBIDDEN:
        return Failure(
          ResponseCode.FORBIDDEN,
          ResponseMessage.FORBIDDEN,
        );
      case ApiResponse.UNAUTORISED:
        return Failure(
          ResponseCode.UNAUTORISED,
          ResponseMessage.UNAUTORISED,
        );
      case ApiResponse.NOT_FOUND:
        return Failure(
          ResponseCode.NOT_FOUND,
          ResponseMessage.NOT_FOUND,
        );
      case ApiResponse.INTERNAL_SERVER_ERROR:
        return Failure(
          ResponseCode.INTERNAL_SERVER_ERROR,
          ResponseMessage.INTERNAL_SERVER_ERROR,
        );
      case ApiResponse.CONNECT_TIMEOUT:
        return Failure(
          ResponseCode.CONNECT_TIMEOUT,
          ResponseMessage.CONNECT_TIMEOUT,
        );
      case ApiResponse.CANCEL:
        return Failure(
          ResponseCode.CANCEL,
          ResponseMessage.CANCEL,
        );
      case ApiResponse.RECIEVE_TIMEOUT:
        return Failure(
          ResponseCode.RECIEVE_TIMEOUT,
          ResponseMessage.RECIEVE_TIMEOUT,
        );
      case ApiResponse.SEND_TIMEOUT:
        return Failure(
          ResponseCode.SEND_TIMEOUT,
          ResponseMessage.SEND_TIMEOUT,
        );
      case ApiResponse.CACHE_ERROR:
        return Failure(
          ResponseCode.CACHE_ERROR,
          ResponseMessage.CACHE_ERROR,
        );
      case ApiResponse.NO_INTERNET_CONNECTION:
        return Failure(
          ResponseCode.NO_INTERNET_CONNECTION,
          ResponseMessage.NO_INTERNET_CONNECTION,
        );
      case ApiResponse.DEFAULT:
        return Failure(
          ResponseCode.DEFAULT,
          ResponseMessage.DEFAULT,
        );
    }
  }
}
