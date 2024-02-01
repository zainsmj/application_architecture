import 'package:equatable/equatable.dart';

// class MovieEntity extends Equatable {
//   final int id;
//   final String title;
//   final String posterUrl;
//   final String imdbId;

//   const MovieEntity({
//     required this.id,
//     required this.title,
//     required this.posterUrl,
//     required this.imdbId,
//   });

//   const MovieEntity.empty({
//     this.id = 0,
//     this.title = "",
//     this.posterUrl = "",
//     this.imdbId = "",
//   });

//   @override
//   List<Object?> get props => [
//         id,
//         title,
//         posterUrl,
//         imdbId,
//       ];
// }

class MovieResponseEntity extends Equatable {
  final int code;
  final String message;
  final List<MovieEntity> data;

  const MovieResponseEntity({
    required this.code,
    required this.message,
    required this.data,
  });

  @override
  List<Object?> get props => [
        code,
        message,
        data,
      ];
}

class MovieEntity extends Equatable {
  final int id;
  final String title;
  final String posterUrl;
  final String imdbId;

  const MovieEntity({
    required this.id,
    required this.title,
    required this.posterUrl,
    required this.imdbId,
  });

  const MovieEntity.empty({
    this.id = 0,
    this.title = "",
    this.posterUrl = "",
    this.imdbId = "",
  });

  @override
  List<Object?> get props => [
        id,
        title,
        posterUrl,
        imdbId,
      ];
}
