import 'dart:convert';
import 'package:my_clean_architecture_sample/modules/movie/domain/entities/movie_entity.dart';

// MovieModel movieModelFromJson(String str) =>
//     MovieModel.fromJson(json.decode(str));

// String movieModelToJson(MovieModel data) => json.encode(data.toJson());

// class MovieModel extends MovieEntity {
//   const MovieModel({
//     id,
//     title,
//     posterUrl,
//     imdbId,
//   }) : super(
//           id: id,
//           title: title,
//           posterUrl: posterUrl,
//           imdbId: imdbId,
//         );

//   factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
//         id: json["id"],
//         title: json["title"],
//         posterUrl: json["posterURL"],
//         imdbId: json["imdbId"],
//       );

// //   factory MovieModel.fromBase(dynamic json) {
// //     if (json is CatalogModel) {
// //       return json;
// //     }
// //     return CatalogModel(
// //       hasMore: json.hasMore,
// //       items: json.items,
// //     );
// //   }

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "title": title,
//         "posterURL": posterUrl,
//         "imdbId": imdbId,
//       };
// }

MovieResponseModel movieResponseModelFromJson(String str) => MovieResponseModel.fromJson(json.decode(str));

String movieResponseModelToJson(MovieResponseModel data) => json.encode(data.toJson());

class MovieResponseModel extends MovieResponseEntity {
  const MovieResponseModel({
    code,
    message,
    data,
  }) : super(
          code: code,
          message: message,
          data: data,
        );

  factory MovieResponseModel.fromJson(Map<String, dynamic> json) => MovieResponseModel(
        code: json["code"],
        message: json["message"],
        data: List<MovieModel>.from(
          json["data"].map(MovieModel.fromJson),
        ),
      );

  factory MovieResponseModel.fromBase(dynamic json) {
    if (json is MovieResponseModel) {
      return json;
    }
    return MovieResponseModel(
      code: json.code,
      message: json.message,
      data: json.data,
    );
  }

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data.map((v) => MovieModel.fromBase(v).toJson()).toList(),
      };
}

class MovieModel extends MovieEntity {
  const MovieModel({
    id,
    title,
    posterUrl,
    imdbId,
  }) : super(
          id: id,
          title: title,
          posterUrl: posterUrl,
          imdbId: imdbId,
        );

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json["id"],
        title: json["title"],
        posterUrl: json["posterURL"],
        imdbId: json["imdbId"],
      );

  factory MovieModel.fromBase(dynamic json) {
    if (json is MovieModel) {
      return json;
    }
    return MovieModel(
      id: json.id,
      title: json.title,
      posterUrl: json.posterUrl,
      imdbId: json.imdbId,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "posterURL": posterUrl,
        "imdbId": imdbId,
      };
}
