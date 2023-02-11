import 'dart:convert';

import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../json_reader.dart';

void main() {
  const tMovieModel = MovieModel(
    adult: false,
    backdropPath: "/path.jpg",
    genreIds: [1, 2, 3, 4],
    id: 1,
    originalTitle: "Original Title",
    overview: "Overview",
    popularity: 1.0,
    posterPath: "/path.jpg",
    releaseDate: "2023-01-01",
    title: "Title",
    video: false,
    voteAverage: 1.0,
    voteCount: 1,
  );
  const tMovieResponseModel =
      MovieResponse(movieList: <MovieModel>[tMovieModel]);

  group('fromJson', () {
    test('should return a valid model from JSON', () async {
      final Map<String, dynamic> jsonMap =
          json.decode(readJson('dummy_data/now_playing.json'));

      final result = MovieResponse.fromJson(jsonMap);
      expect(result, tMovieResponseModel);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing proper data', () async {
      final result = tMovieResponseModel.toJson();
      final expectedJsonMap = {
        "results": [
          {
            "adult": false,
            "backdrop_path": "/path.jpg",
            "genre_ids": [1, 2, 3, 4],
            "id": 1,
            "original_title": "Original Title",
            "overview": "Overview",
            "popularity": 1.0,
            "poster_path": "/path.jpg",
            "release_date": "2023-01-01",
            "title": "Title",
            "video": false,
            "vote_average": 1.0,
            "vote_count": 1
          }
        ],
      };

      expect(result, expectedJsonMap);
    });
  });
}
