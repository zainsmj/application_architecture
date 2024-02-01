// ignore_for_file: constant_identifier_names

import 'package:my_clean_architecture_sample/core/utils/constants/app_enums.dart';
import 'package:my_clean_architecture_sample/core/utils/errors/failures.dart';
import 'package:my_clean_architecture_sample/core/utils/extensions/network_failure_extension.dart';
import 'package:dio/dio.dart';

class ApiExceptions implements Exception {
  late Failure failure;

  ApiExceptions.handleError(dynamic error) {
    if (error is DioException) {
      failure = _handleDioExceptions(error);
    } else {
      failure = ApiResponse.DEFAULT.getFailure();
    }
  }
}

Failure _handleDioExceptions(DioException error) {
  switch (error.type) {
    case DioExceptionType.badCertificate:
      return ApiResponse.BAD_REQUEST.getFailure();
    case DioExceptionType.badResponse:
      return ApiResponse.DEFAULT.getFailure();
    case DioExceptionType.cancel:
      return ApiResponse.CANCEL.getFailure();
    // case DioExceptionType.connectionError:
    //   return ApiResponse.BAD_REQUEST.getFailure();
    case DioExceptionType.connectionTimeout:
      return ApiResponse.CONNECT_TIMEOUT.getFailure();
    case DioExceptionType.receiveTimeout:
      return ApiResponse.RECIEVE_TIMEOUT.getFailure();
    case DioExceptionType.sendTimeout:
      return ApiResponse.SEND_TIMEOUT.getFailure();
    case DioExceptionType.unknown:
      return ApiResponse.DEFAULT.getFailure();
    default:
      return ApiResponse.DEFAULT.getFailure();
  }
}

class ResponseCode {
  static const int SUCCESS = 200;
  static const int NO_CONTENT = 201;
  static const int BAD_REQUEST = 400;
  static const int UNAUTORISED = 401;
  static const int FORBIDDEN = 403;
  static const int INTERNAL_SERVER_ERROR = 500;
  static const int NOT_FOUND = 404;
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECIEVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}

class ResponseMessage {
  static const String SUCCESS = "";
  static const String NO_CONTENT = "";
  static const String BAD_REQUEST = "";
  static const String UNAUTORISED = "";
  static const String FORBIDDEN = "";
  static const String INTERNAL_SERVER_ERROR = "";
  static const String NOT_FOUND = "";
  static const String CONNECT_TIMEOUT = "";
  static const String CANCEL = "";
  static const String RECIEVE_TIMEOUT = "";
  static const String SEND_TIMEOUT = "";
  static const String CACHE_ERROR = "";
  static const String NO_INTERNET_CONNECTION = "";
  static const String DEFAULT = "";
}

// class ApiExceptions implements Exception {
//   final String? _message;
//   final String? _prefix;

//   ApiExceptions([this._message, this._prefix]);

//   @override
//   String toString() {
//     return "$_prefix$_message";
//   }
// }

// class BadRequestException extends ApiExceptions {
//   BadRequestException([message]) : super(message, "Bad Request ");
// }

// class UnauthorizedException extends ApiExceptions {
//   UnauthorizedException([message]) : super(message, "Unauthorized ");
// }

// class ForbiddenException extends ApiExceptions {
//   ForbiddenException([message]) : super(message, "Forbidden ");
// }

// class NotFoundException extends ApiExceptions {
//   NotFoundException([message]) : super(message, "URL Not Found ");
// }

// class InternalServerError extends ApiExceptions {
//   InternalServerError([message]) : super(message, "Internal Server Error ");
// }

// class FetchDataException extends ApiExceptions {
//   FetchDataException([message]) : super(message, "");
// }

// class DefaultException extends ApiExceptions {
//   DefaultException([message]) : super(message, "Error During Communication ");
// }
