// Mocks generated by Mockito 5.3.2 from annotations
// in core/test/helpers/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;
import 'dart:convert' as _i8;
import 'dart:typed_data' as _i9;

import 'package:core/core.dart' as _i3;
import 'package:dartz/dartz.dart' as _i2;
import 'package:http/http.dart' as _i4;
import 'package:http/io_client.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:sqflite_sqlcipher/sqflite.dart' as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMovieDetailResponse_1 extends _i1.SmartFake
    implements _i3.MovieDetailResponse {
  _FakeMovieDetailResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTvDetailModel_2 extends _i1.SmartFake implements _i3.TvDetailModel {
  _FakeTvDetailModel_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_3 extends _i1.SmartFake implements _i4.Response {
  _FakeResponse_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamedResponse_4 extends _i1.SmartFake
    implements _i4.StreamedResponse {
  _FakeStreamedResponse_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeIOStreamedResponse_5 extends _i1.SmartFake
    implements _i5.IOStreamedResponse {
  _FakeIOStreamedResponse_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [MovieRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRepository extends _i1.Mock implements _i3.MovieRepository {
  MockMovieRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>> getNowPlayingMovies() =>
      (super.noSuchMethod(
        Invocation.method(
          #getNowPlayingMovies,
          [],
        ),
        returnValue: _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>>.value(
            _FakeEither_0<_i3.Failure, List<_i3.Movie>>(
          this,
          Invocation.method(
            #getNowPlayingMovies,
            [],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>>);
  @override
  _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>> getPopularMovies() =>
      (super.noSuchMethod(
        Invocation.method(
          #getPopularMovies,
          [],
        ),
        returnValue: _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>>.value(
            _FakeEither_0<_i3.Failure, List<_i3.Movie>>(
          this,
          Invocation.method(
            #getPopularMovies,
            [],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>>);
  @override
  _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>> getTopRatedMovies() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTopRatedMovies,
          [],
        ),
        returnValue: _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>>.value(
            _FakeEither_0<_i3.Failure, List<_i3.Movie>>(
          this,
          Invocation.method(
            #getTopRatedMovies,
            [],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>>);
  @override
  _i6.Future<_i2.Either<_i3.Failure, _i3.MovieDetail>> getMovieDetail(
          int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieDetail,
          [id],
        ),
        returnValue: _i6.Future<_i2.Either<_i3.Failure, _i3.MovieDetail>>.value(
            _FakeEither_0<_i3.Failure, _i3.MovieDetail>(
          this,
          Invocation.method(
            #getMovieDetail,
            [id],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, _i3.MovieDetail>>);
  @override
  _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>> getMovieRecommendations(
          int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieRecommendations,
          [id],
        ),
        returnValue: _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>>.value(
            _FakeEither_0<_i3.Failure, List<_i3.Movie>>(
          this,
          Invocation.method(
            #getMovieRecommendations,
            [id],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>>);
  @override
  _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>> searchMovies(
          String? query) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchMovies,
          [query],
        ),
        returnValue: _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>>.value(
            _FakeEither_0<_i3.Failure, List<_i3.Movie>>(
          this,
          Invocation.method(
            #searchMovies,
            [query],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>>);
  @override
  _i6.Future<_i2.Either<_i3.Failure, String>> saveWatchlist(
          _i3.MovieDetail? movie) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveWatchlist,
          [movie],
        ),
        returnValue: _i6.Future<_i2.Either<_i3.Failure, String>>.value(
            _FakeEither_0<_i3.Failure, String>(
          this,
          Invocation.method(
            #saveWatchlist,
            [movie],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, String>>);
  @override
  _i6.Future<_i2.Either<_i3.Failure, String>> removeWatchlist(
          _i3.MovieDetail? movie) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeWatchlist,
          [movie],
        ),
        returnValue: _i6.Future<_i2.Either<_i3.Failure, String>>.value(
            _FakeEither_0<_i3.Failure, String>(
          this,
          Invocation.method(
            #removeWatchlist,
            [movie],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, String>>);
  @override
  _i6.Future<bool> isAddedToWatchlist(int? id) => (super.noSuchMethod(
        Invocation.method(
          #isAddedToWatchlist,
          [id],
        ),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);
  @override
  _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>> getWatchlistMovies() =>
      (super.noSuchMethod(
        Invocation.method(
          #getWatchlistMovies,
          [],
        ),
        returnValue: _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>>.value(
            _FakeEither_0<_i3.Failure, List<_i3.Movie>>(
          this,
          Invocation.method(
            #getWatchlistMovies,
            [],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, List<_i3.Movie>>>);
}

/// A class which mocks [TvRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvRepository extends _i1.Mock implements _i3.TvRepository {
  MockTvRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>> getOnAiringTv() =>
      (super.noSuchMethod(
        Invocation.method(
          #getOnAiringTv,
          [],
        ),
        returnValue:
            _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>>.value(
                _FakeEither_0<_i3.Failure, List<_i3.TvSeries>>(
          this,
          Invocation.method(
            #getOnAiringTv,
            [],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>>);
  @override
  _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>> getPopularTv() =>
      (super.noSuchMethod(
        Invocation.method(
          #getPopularTv,
          [],
        ),
        returnValue:
            _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>>.value(
                _FakeEither_0<_i3.Failure, List<_i3.TvSeries>>(
          this,
          Invocation.method(
            #getPopularTv,
            [],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>>);
  @override
  _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>> getTopRatedTv() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTopRatedTv,
          [],
        ),
        returnValue:
            _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>>.value(
                _FakeEither_0<_i3.Failure, List<_i3.TvSeries>>(
          this,
          Invocation.method(
            #getTopRatedTv,
            [],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>>);
  @override
  _i6.Future<_i2.Either<_i3.Failure, _i3.TvSeriesDetail>> getTvDetail(
          int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTvDetail,
          [id],
        ),
        returnValue:
            _i6.Future<_i2.Either<_i3.Failure, _i3.TvSeriesDetail>>.value(
                _FakeEither_0<_i3.Failure, _i3.TvSeriesDetail>(
          this,
          Invocation.method(
            #getTvDetail,
            [id],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, _i3.TvSeriesDetail>>);
  @override
  _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>> getTvRecommendations(
          int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTvRecommendations,
          [id],
        ),
        returnValue:
            _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>>.value(
                _FakeEither_0<_i3.Failure, List<_i3.TvSeries>>(
          this,
          Invocation.method(
            #getTvRecommendations,
            [id],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>>);
  @override
  _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>> searchTv(
          String? query) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchTv,
          [query],
        ),
        returnValue:
            _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>>.value(
                _FakeEither_0<_i3.Failure, List<_i3.TvSeries>>(
          this,
          Invocation.method(
            #searchTv,
            [query],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>>);
  @override
  _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>> getWatchlistTv() =>
      (super.noSuchMethod(
        Invocation.method(
          #getWatchlistTv,
          [],
        ),
        returnValue:
            _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>>.value(
                _FakeEither_0<_i3.Failure, List<_i3.TvSeries>>(
          this,
          Invocation.method(
            #getWatchlistTv,
            [],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, List<_i3.TvSeries>>>);
  @override
  _i6.Future<_i2.Either<_i3.Failure, String>> saveWatchlistTv(
          _i3.TvSeriesDetail? tv) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveWatchlistTv,
          [tv],
        ),
        returnValue: _i6.Future<_i2.Either<_i3.Failure, String>>.value(
            _FakeEither_0<_i3.Failure, String>(
          this,
          Invocation.method(
            #saveWatchlistTv,
            [tv],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, String>>);
  @override
  _i6.Future<_i2.Either<_i3.Failure, String>> removeWatchlistTv(
          _i3.TvSeriesDetail? tv) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeWatchlistTv,
          [tv],
        ),
        returnValue: _i6.Future<_i2.Either<_i3.Failure, String>>.value(
            _FakeEither_0<_i3.Failure, String>(
          this,
          Invocation.method(
            #removeWatchlistTv,
            [tv],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i3.Failure, String>>);
  @override
  _i6.Future<bool> isAddedToWatchlist(int? id) => (super.noSuchMethod(
        Invocation.method(
          #isAddedToWatchlist,
          [id],
        ),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);
}

/// A class which mocks [MovieRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRemoteDataSource extends _i1.Mock
    implements _i3.MovieRemoteDataSource {
  MockMovieRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<List<_i3.MovieModel>> getNowPlayingMovies() => (super.noSuchMethod(
        Invocation.method(
          #getNowPlayingMovies,
          [],
        ),
        returnValue: _i6.Future<List<_i3.MovieModel>>.value(<_i3.MovieModel>[]),
      ) as _i6.Future<List<_i3.MovieModel>>);
  @override
  _i6.Future<List<_i3.MovieModel>> getPopularMovies() => (super.noSuchMethod(
        Invocation.method(
          #getPopularMovies,
          [],
        ),
        returnValue: _i6.Future<List<_i3.MovieModel>>.value(<_i3.MovieModel>[]),
      ) as _i6.Future<List<_i3.MovieModel>>);
  @override
  _i6.Future<List<_i3.MovieModel>> getTopRatedMovies() => (super.noSuchMethod(
        Invocation.method(
          #getTopRatedMovies,
          [],
        ),
        returnValue: _i6.Future<List<_i3.MovieModel>>.value(<_i3.MovieModel>[]),
      ) as _i6.Future<List<_i3.MovieModel>>);
  @override
  _i6.Future<_i3.MovieDetailResponse> getMovieDetail(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieDetail,
          [id],
        ),
        returnValue: _i6.Future<_i3.MovieDetailResponse>.value(
            _FakeMovieDetailResponse_1(
          this,
          Invocation.method(
            #getMovieDetail,
            [id],
          ),
        )),
      ) as _i6.Future<_i3.MovieDetailResponse>);
  @override
  _i6.Future<List<_i3.MovieModel>> getMovieRecommendations(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieRecommendations,
          [id],
        ),
        returnValue: _i6.Future<List<_i3.MovieModel>>.value(<_i3.MovieModel>[]),
      ) as _i6.Future<List<_i3.MovieModel>>);
  @override
  _i6.Future<List<_i3.MovieModel>> searchMovies(String? query) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchMovies,
          [query],
        ),
        returnValue: _i6.Future<List<_i3.MovieModel>>.value(<_i3.MovieModel>[]),
      ) as _i6.Future<List<_i3.MovieModel>>);
}

/// A class which mocks [TvRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvRemoteDataSource extends _i1.Mock
    implements _i3.TvRemoteDataSource {
  MockTvRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<List<_i3.TvModel>> getOnAiringTv() => (super.noSuchMethod(
        Invocation.method(
          #getOnAiringTv,
          [],
        ),
        returnValue: _i6.Future<List<_i3.TvModel>>.value(<_i3.TvModel>[]),
      ) as _i6.Future<List<_i3.TvModel>>);
  @override
  _i6.Future<List<_i3.TvModel>> getPopularTv() => (super.noSuchMethod(
        Invocation.method(
          #getPopularTv,
          [],
        ),
        returnValue: _i6.Future<List<_i3.TvModel>>.value(<_i3.TvModel>[]),
      ) as _i6.Future<List<_i3.TvModel>>);
  @override
  _i6.Future<List<_i3.TvModel>> getTopRatedTv() => (super.noSuchMethod(
        Invocation.method(
          #getTopRatedTv,
          [],
        ),
        returnValue: _i6.Future<List<_i3.TvModel>>.value(<_i3.TvModel>[]),
      ) as _i6.Future<List<_i3.TvModel>>);
  @override
  _i6.Future<_i3.TvDetailModel> getTvDetail(int? id) => (super.noSuchMethod(
        Invocation.method(
          #getTvDetail,
          [id],
        ),
        returnValue: _i6.Future<_i3.TvDetailModel>.value(_FakeTvDetailModel_2(
          this,
          Invocation.method(
            #getTvDetail,
            [id],
          ),
        )),
      ) as _i6.Future<_i3.TvDetailModel>);
  @override
  _i6.Future<List<_i3.TvModel>> getTvRecommendations(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTvRecommendations,
          [id],
        ),
        returnValue: _i6.Future<List<_i3.TvModel>>.value(<_i3.TvModel>[]),
      ) as _i6.Future<List<_i3.TvModel>>);
  @override
  _i6.Future<List<_i3.TvModel>> searchTv(String? query) => (super.noSuchMethod(
        Invocation.method(
          #searchTv,
          [query],
        ),
        returnValue: _i6.Future<List<_i3.TvModel>>.value(<_i3.TvModel>[]),
      ) as _i6.Future<List<_i3.TvModel>>);
}

/// A class which mocks [MovieLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieLocalDataSource extends _i1.Mock
    implements _i3.MovieLocalDataSource {
  MockMovieLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<String> insertWatchlist(_i3.MovieTable? movie) =>
      (super.noSuchMethod(
        Invocation.method(
          #insertWatchlist,
          [movie],
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<String> removeWatchlist(_i3.MovieTable? movie) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeWatchlist,
          [movie],
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<void> cacheNowPlayingMovies(List<_i3.MovieTable>? movies) =>
      (super.noSuchMethod(
        Invocation.method(
          #cacheNowPlayingMovies,
          [movies],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<_i3.MovieTable?> getMovieById(int? id) => (super.noSuchMethod(
        Invocation.method(
          #getMovieById,
          [id],
        ),
        returnValue: _i6.Future<_i3.MovieTable?>.value(),
      ) as _i6.Future<_i3.MovieTable?>);
  @override
  _i6.Future<List<_i3.MovieTable>> getWatchlistMovies() => (super.noSuchMethod(
        Invocation.method(
          #getWatchlistMovies,
          [],
        ),
        returnValue: _i6.Future<List<_i3.MovieTable>>.value(<_i3.MovieTable>[]),
      ) as _i6.Future<List<_i3.MovieTable>>);
  @override
  _i6.Future<List<_i3.MovieTable>> getCacheNowPlayingMovies() =>
      (super.noSuchMethod(
        Invocation.method(
          #getCacheNowPlayingMovies,
          [],
        ),
        returnValue: _i6.Future<List<_i3.MovieTable>>.value(<_i3.MovieTable>[]),
      ) as _i6.Future<List<_i3.MovieTable>>);
}

/// A class which mocks [TvLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvLocalDataSource extends _i1.Mock implements _i3.TvLocalDataSource {
  MockTvLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<String> insertWatchlistTv(_i3.TvTable? tv) => (super.noSuchMethod(
        Invocation.method(
          #insertWatchlistTv,
          [tv],
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<String> removeWatchlistTv(_i3.TvTable? tv) => (super.noSuchMethod(
        Invocation.method(
          #removeWatchlistTv,
          [tv],
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<_i3.TvTable?> getTvById(int? id) => (super.noSuchMethod(
        Invocation.method(
          #getTvById,
          [id],
        ),
        returnValue: _i6.Future<_i3.TvTable?>.value(),
      ) as _i6.Future<_i3.TvTable?>);
  @override
  _i6.Future<List<_i3.TvTable>> getWatchlistTv() => (super.noSuchMethod(
        Invocation.method(
          #getWatchlistTv,
          [],
        ),
        returnValue: _i6.Future<List<_i3.TvTable>>.value(<_i3.TvTable>[]),
      ) as _i6.Future<List<_i3.TvTable>>);
}

/// A class which mocks [DatabaseHelper].
///
/// See the documentation for Mockito's code generation for more information.
class MockDatabaseHelper extends _i1.Mock implements _i3.DatabaseHelper {
  MockDatabaseHelper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i7.Database?> get database => (super.noSuchMethod(
        Invocation.getter(#database),
        returnValue: _i6.Future<_i7.Database?>.value(),
      ) as _i6.Future<_i7.Database?>);
  @override
  _i6.Future<int> insertWatchlist(_i3.MovieTable? movie) => (super.noSuchMethod(
        Invocation.method(
          #insertWatchlist,
          [movie],
        ),
        returnValue: _i6.Future<int>.value(0),
      ) as _i6.Future<int>);
  @override
  _i6.Future<int> insertWatchlistTv(_i3.TvTable? tv) => (super.noSuchMethod(
        Invocation.method(
          #insertWatchlistTv,
          [tv],
        ),
        returnValue: _i6.Future<int>.value(0),
      ) as _i6.Future<int>);
  @override
  _i6.Future<int> removeWatchlist(_i3.MovieTable? movie) => (super.noSuchMethod(
        Invocation.method(
          #removeWatchlist,
          [movie],
        ),
        returnValue: _i6.Future<int>.value(0),
      ) as _i6.Future<int>);
  @override
  _i6.Future<int> removeWatchlistTv(_i3.TvTable? tv) => (super.noSuchMethod(
        Invocation.method(
          #removeWatchlistTv,
          [tv],
        ),
        returnValue: _i6.Future<int>.value(0),
      ) as _i6.Future<int>);
  @override
  _i6.Future<Map<String, dynamic>?> getMovieById(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieById,
          [id],
        ),
        returnValue: _i6.Future<Map<String, dynamic>?>.value(),
      ) as _i6.Future<Map<String, dynamic>?>);
  @override
  _i6.Future<Map<String, dynamic>?> getTvById(int? id) => (super.noSuchMethod(
        Invocation.method(
          #getTvById,
          [id],
        ),
        returnValue: _i6.Future<Map<String, dynamic>?>.value(),
      ) as _i6.Future<Map<String, dynamic>?>);
  @override
  _i6.Future<List<Map<String, dynamic>>> getWatchlistMovies() =>
      (super.noSuchMethod(
        Invocation.method(
          #getWatchlistMovies,
          [],
        ),
        returnValue: _i6.Future<List<Map<String, dynamic>>>.value(
            <Map<String, dynamic>>[]),
      ) as _i6.Future<List<Map<String, dynamic>>>);
  @override
  _i6.Future<List<Map<String, dynamic>>> getWatchlistTv() =>
      (super.noSuchMethod(
        Invocation.method(
          #getWatchlistTv,
          [],
        ),
        returnValue: _i6.Future<List<Map<String, dynamic>>>.value(
            <Map<String, dynamic>>[]),
      ) as _i6.Future<List<Map<String, dynamic>>>);
  @override
  _i6.Future<void> insertCacheNowPlayingMovies(
    List<_i3.MovieTable>? movies,
    String? category,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #insertCacheNowPlayingMovies,
          [
            movies,
            category,
          ],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<List<Map<String, dynamic>>> getCacheNowPlayingMovies(
          String? category) =>
      (super.noSuchMethod(
        Invocation.method(
          #getCacheNowPlayingMovies,
          [category],
        ),
        returnValue: _i6.Future<List<Map<String, dynamic>>>.value(
            <Map<String, dynamic>>[]),
      ) as _i6.Future<List<Map<String, dynamic>>>);
  @override
  _i6.Future<int> clearCache(String? category) => (super.noSuchMethod(
        Invocation.method(
          #clearCache,
          [category],
        ),
        returnValue: _i6.Future<int>.value(0),
      ) as _i6.Future<int>);
  @override
  String encrypt(String? plainText) => (super.noSuchMethod(
        Invocation.method(
          #encrypt,
          [plainText],
        ),
        returnValue: '',
      ) as String);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i3.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<bool> get isConnected => (super.noSuchMethod(
        Invocation.getter(#isConnected),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpClient extends _i1.Mock implements _i4.Client {
  MockHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i4.Response> head(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #head,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<_i4.Response> get(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #get,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<_i4.Response> post(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i8.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #post,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<_i4.Response> put(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i8.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #put,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<_i4.Response> patch(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i8.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #patch,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<_i4.Response> delete(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i8.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #delete,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<String> read(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #read,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<_i9.Uint8List> readBytes(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #readBytes,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i9.Uint8List>.value(_i9.Uint8List(0)),
      ) as _i6.Future<_i9.Uint8List>);
  @override
  _i6.Future<_i4.StreamedResponse> send(_i4.BaseRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #send,
          [request],
        ),
        returnValue:
            _i6.Future<_i4.StreamedResponse>.value(_FakeStreamedResponse_4(
          this,
          Invocation.method(
            #send,
            [request],
          ),
        )),
      ) as _i6.Future<_i4.StreamedResponse>);
  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [IOClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockIoClient extends _i1.Mock implements _i5.IOClient {
  MockIoClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i5.IOStreamedResponse> send(_i4.BaseRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #send,
          [request],
        ),
        returnValue:
            _i6.Future<_i5.IOStreamedResponse>.value(_FakeIOStreamedResponse_5(
          this,
          Invocation.method(
            #send,
            [request],
          ),
        )),
      ) as _i6.Future<_i5.IOStreamedResponse>);
  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i6.Future<_i4.Response> head(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #head,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<_i4.Response> get(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #get,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<_i4.Response> post(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i8.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #post,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<_i4.Response> put(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i8.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #put,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<_i4.Response> patch(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i8.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #patch,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<_i4.Response> delete(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i8.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i4.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #delete,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i4.Response>);
  @override
  _i6.Future<String> read(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #read,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<_i9.Uint8List> readBytes(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #readBytes,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i9.Uint8List>.value(_i9.Uint8List(0)),
      ) as _i6.Future<_i9.Uint8List>);
}
