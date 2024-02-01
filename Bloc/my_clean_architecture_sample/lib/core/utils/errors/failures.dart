
class Failure {
  final int code;
  final String message;

  Failure(this.code, this.message);
}

// abstract class Failure extends Equatable {
//   final String message;

//   const Failure(this.message);

//   @override
//   List<Object> get props => [message];
// }

// class ServerFailure extends Failure {
//   const ServerFailure(String message) : super(message);
// }

// class CacheFailure extends Failure {
//   const CacheFailure(String message) : super(message);
// }

// class BadRequestException extends Failure {
//   const BadRequestException(String message) : super(message);
// }

// class UnauthorizedException extends Failure {
//   const UnauthorizedException(String message) : super(message);
// }

// class ForbiddenException extends Failure {
//   const ForbiddenException(String message) : super(message);
// }

// class NotFoundException extends Failure {
//   const NotFoundException(String message) : super(message);
// }

// class InternalServerError extends Failure {
//   const InternalServerError(String message) : super(message);
// }

// class FetchDataException extends Failure {
//   const FetchDataException(String message) : super(message);
// }

// class DefaultException extends Failure {
//   const DefaultException(String message) : super(message);
// }
